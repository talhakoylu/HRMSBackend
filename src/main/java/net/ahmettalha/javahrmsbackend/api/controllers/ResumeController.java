package net.ahmettalha.javahrmsbackend.api.controllers;

import net.ahmettalha.javahrmsbackend.business.abstracts.ResumeService;
import net.ahmettalha.javahrmsbackend.core.utilities.results.Result;
import net.ahmettalha.javahrmsbackend.entities.concretes.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/resume")
public class ResumeController {
    private ResumeService resumeService;

    @Autowired
    public ResumeController(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    @PostMapping("/add")
    public Result add(@RequestBody Resume resume){
        return this.resumeService.add(resume);
    }

    @GetMapping("/get-all-by-user-id")
    public Result getAllByUserId(@RequestParam int id){
        return this.resumeService.findAllByUserId(id);
    }
}
