.class public interface abstract Lnet/sf/saxon/s9api/ExtensionFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract call([Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation
.end method

.method public abstract getArgumentTypes()[Lnet/sf/saxon/s9api/SequenceType;
.end method

.method public abstract getName()Lnet/sf/saxon/s9api/QName;
.end method

.method public getResultType()Lnet/sf/saxon/s9api/SequenceType;
    .locals 0

    sget-object p0, Lnet/sf/saxon/s9api/SequenceType;->ANY:Lnet/sf/saxon/s9api/SequenceType;

    return-object p0
.end method
