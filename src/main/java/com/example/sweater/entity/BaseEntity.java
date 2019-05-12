package com.example.sweater.entity;

import lombok.Data;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

import static javax.persistence.TemporalType.TIMESTAMP;

@Data
@EntityListeners(AuditingEntityListener.class)
@MappedSuperclass
public abstract class BaseEntity implements Serializable {

    @Version
    @Column(name = "version")
    private Long version;

    @LastModifiedDate
    @Temporal(TIMESTAMP)
    @Column(name = "whenmodified")
    private Date whenmodified;

    @Override
    public String toString() {
        return " BaseEntity{" +
                "version=" + version +
                ", whenmodified=" + whenmodified +
                '}';
    }
}
