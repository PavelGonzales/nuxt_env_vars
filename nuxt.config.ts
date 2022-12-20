// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  runtimeConfig: {
    // Private keys are only available on the server
    serverVar: process.env.SERVER_ONLY_VAR,
    // Public keys that are exposed to the client
    public: {
      ...process.env
    }
  }
})
