.class public abstract Lnet/sf/saxon/type/ExternalObjectType;
.super Lnet/sf/saxon/type/AnyExternalObjectType;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/type/AnyExternalObjectType;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTargetNamespace()Ljava/lang/String;
.end method

.method public abstract getTypeName()Lnet/sf/saxon/om/StructuredQName;
.end method

.method public final isPlainType()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/type/ExternalObjectType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
