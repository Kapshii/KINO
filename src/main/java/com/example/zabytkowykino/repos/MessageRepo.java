package com.example.zabytkowykino.repos;

import com.example.zabytkowykino.domianimpl.Message;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

@Transactional(readOnly = true)
public interface MessageRepo extends CrudRepository<Message, Long> {


    List<Message> findByTag(String tag);



    @Modifying
    @Transactional
    @Query(nativeQuery = true,value = " delete from message  m where  m.id = ?1 " )
      void deleteById(Long id);

    @Modifying
    @Transactional
    @Query(nativeQuery = true,value = " delete from message" )
      void deleteAll();



}

