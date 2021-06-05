package net.ahmettalha.javahrmsbackend.dataAccess.abstracts;

import net.ahmettalha.javahrmsbackend.entities.concretes.Resume;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ResumeDao extends JpaRepository<Resume, Integer> {
    List<Resume> findAllByCandidateUser_Id(int id);
}
