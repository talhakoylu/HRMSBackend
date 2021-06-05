package net.ahmettalha.javahrmsbackend.business.abstracts;

import net.ahmettalha.javahrmsbackend.core.utilities.results.DataResult;
import net.ahmettalha.javahrmsbackend.entities.concretes.Resume;

import java.util.List;

public interface ResumeService extends BaseService<Resume> {
    DataResult<List<Resume>> findAllByUserId(int id);
}
