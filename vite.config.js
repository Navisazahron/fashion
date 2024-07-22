import { defineConfig } from 'vite';

export default defineConfig({
  resolve: {
    alias: {
      '@assets': '/path/to/your/assets/directory',
    },
  },
});
