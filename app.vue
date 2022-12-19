<template>
  <div>
    Server var (на клиенте потрется и станет недоступна): {{ config.serverVar }}
    <br>
    Public var: {{ config.public.publicVar }}
  </div>
</template>

<script setup>
const config = useRuntimeConfig();

const envVariable = config.apiSecret;

console.log('Server var', config.serverVar)
</script>
