// Writes seed.json into Firestore. Doc IDs are fixed, so re-running overwrites instead of duplicating.
// Usage: FIREBASE_SERVICE_ACCOUNT='<service account JSON>' node import.mjs [--dry-run]
import { readFileSync } from 'node:fs';

const seed = JSON.parse(readFileSync(new URL('./seed.json', import.meta.url)));
const writes = Object.entries(seed).flatMap(([col, docs]) =>
  Object.entries(docs).map(([id, data]) => ({ col, id, data })));

if (process.argv.includes('--dry-run')) {
  for (const w of writes) console.log(`${w.col}/${w.id}: ${w.data.items.length} items`);
  process.exit(0);
}

const { initializeApp, cert } = await import('firebase-admin/app');
const { getFirestore, FieldValue } = await import('firebase-admin/firestore');
initializeApp({ credential: cert(JSON.parse(process.env.FIREBASE_SERVICE_ACCOUNT)) });
const db = getFirestore();
const batch = db.batch();
for (const w of writes) batch.set(db.collection(w.col).doc(w.id), { ...w.data, importedAt: FieldValue.serverTimestamp() });
await batch.commit();
console.log(`Wrote ${writes.length} documents.`);
