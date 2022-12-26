<template>
  <div>
    process.env from server:
    <pre>
      {{ prcs }}
    </pre>
  </div>
</template>

<script setup>
const config = useRuntimeConfig();
const { data } = await useAsyncData(() => process.env );
const prcs = JSON.parse(JSON.stringify(data.value));
</script>
