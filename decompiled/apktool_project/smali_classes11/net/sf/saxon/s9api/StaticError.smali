.class public interface abstract Lnet/sf/saxon/s9api/StaticError;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getColumnNumber()I
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/StaticError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getColumnNumber()I

    move-result p0

    return p0
.end method

.method public abstract getErrorCode()Lnet/sf/saxon/s9api/QName;
.end method

.method public getInstructionName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLineNumber()I
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/StaticError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getLineNumber()I

    move-result p0

    return p0
.end method

.method public abstract getLocation()Lnet/sf/saxon/s9api/Location;
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public getModuleUri()Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/StaticError;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/s9api/Location;->getSystemId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTerminationMessage()Ljava/lang/String;
.end method

.method public abstract isTypeError()Z
.end method

.method public abstract isWarning()Z
.end method

.method public abstract setTerminationMessage(Ljava/lang/String;)V
.end method
