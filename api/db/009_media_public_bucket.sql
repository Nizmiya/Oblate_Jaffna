-- Serve CMS images from Supabase Storage over the public CDN (no Netlify Blobs).
-- Bucket already holds uploaded objects; public read avoids service-role in Functions.
UPDATE storage.buckets
SET public = true
WHERE id = 'media' OR name = 'media';
