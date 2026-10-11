.class public interface abstract Lnet/sf/saxon/s9api/XmlProcessingError;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract asWarning()Lnet/sf/saxon/s9api/XmlProcessingError;
.end method

.method public abstract getCause()Ljava/lang/Throwable;
.end method

.method public abstract getErrorCode()Lnet/sf/saxon/s9api/QName;
.end method

.method public abstract getHostLanguage()Lnet/sf/saxon/s9api/HostLanguage;
.end method

.method public abstract getLocation()Lnet/sf/saxon/s9api/Location;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public getModuleUri()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/XmlProcessingError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getPath()Ljava/lang/String;
.end method

.method public abstract getTerminationMessage()Ljava/lang/String;
.end method

.method public abstract isAlreadyReported()Z
.end method

.method public abstract isStaticError()Z
.end method

.method public abstract isTypeError()Z
.end method

.method public abstract isWarning()Z
.end method

.method public abstract setAlreadyReported(Z)V
.end method

.method public abstract setTerminationMessage(Ljava/lang/String;)V
.end method
