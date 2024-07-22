<!-- app.vue -->
<template>
  <div>
    <AppHeader/>

    <NuxtPage/>

    <AppFooter/>
  </div>
</template>

<script setup>
import { useHead } from '@unhead/vue'

useHead({
  title: "Toko Baju",
  link: [
    {
      rel: "stylesheet",
      href: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
    }
  ],
  script: [
    {
      src: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    }
  ]
})
</script>

<style></style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha384-ksmH6Y1j5tf1T8I6+4T9xdH9lcKfh1aq0P0+tRTBOSxQbB3eM0vFfXAZxIWUrQ7w" crossorigin="anonymous">
