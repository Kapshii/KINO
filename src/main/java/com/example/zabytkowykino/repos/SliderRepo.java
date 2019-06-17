package com.example.zabytkowykino.repos;

import com.example.zabytkowykino.domianimpl.Sliders;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional(readOnly = true)
public interface SliderRepo extends CrudRepository<Sliders, Long> {

    List<Sliders> findByTag(String tag);
    Sliders findByFilename(Sliders filename);

    @Modifying
    @Transactional
    @Query(nativeQuery = true,value = " delete from sliders  l where  l.id = ?1 " )
    void delete(Long id);

    @Modifying
    @Transactional
    @Query(nativeQuery = true,value = " delete from sliders" )
    void deleteAll();



}
