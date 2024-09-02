<script setup>
import { useRoute, useRouter } from 'vue-router';
import { useContactStore } from '@store/contactStore';
import { Connect } from 'vite';
const store = useContactStore();

const emit = defineEmits(["onEditForm"]);

const route = useRoute();
const router = useRouter()
const contact = store.getContactById(route.params.id);

const form = store.contactForm;

const editContact = () =>{
  // if (form.name && form.number && form.email) {
  //   store.edit(contact, form)
  // } else {
  //   console.log("Please fill all fields in form");
  // }
  router.push('/contact')
}
</script>

<template>
  <div>
    <h1>Contact edit</h1>
    <div class="contact-add w-50 m-auto">
      <ContactForm edit :contact="contact" @on-submit-form="editContact"/>
    </div>
  </div>
</template>

<style scoped>
</style>
