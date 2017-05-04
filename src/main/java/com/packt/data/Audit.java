package com.packt.data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import java.io.Serializable;
import java.util.Date;

@MappedSuperclass
@XmlAccessorType(XmlAccessType.FIELD)
public abstract class Audit implements Serializable, Auditable {

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "AUDIT_CD", updatable = false)
    private Date auditCD;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "AUDIT_MD")
    private Date auditMD;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "AUDIT_RD")
    private Date auditRD;

    @Override
    public Date getAuditCD() {
        return auditCD;
    }

    @Override
    public void setAuditCD(Date auditCD) {
        this.auditCD = auditCD;
    }

    @Override
    public Date getAuditMD() {
        return auditMD;
    }

    @Override
    public void setAuditMD(Date auditMD) {
        this.auditMD = auditMD;
    }

    @Override
    public Date getAuditRD() {
        return auditRD;
    }

    @Override
    public void setAuditRD(Date auditRD) {
        this.auditRD = auditRD;
    }
}

