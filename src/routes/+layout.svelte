<script>
    import "../app.css";
    import Footer from "../lib/components/Footer.svelte";
    import Header from "../lib/components/Header.svelte";

    import {onMount} from 'svelte'
    import {auth} from '../lib/firebase/firebase.client'
    import {authStore} from '../stores/authStore'
    onMount(() => {
      const unsubscribe = auth.onAuthStateChanged((user) => {
          console.log(user)
          authStore.update((curr) => {
            return {...curr, isloading: false, currentUser: user}
          })
      })
    })

  </script>
  
  <div class="relative flex flex-col mx-auto w-full text-sm sm:text-base min-h-screen">
    
    <Header/>
    <main class="flex-grow">
    <slot />
    </main>
    <Footer/>
  </div>