.class public Lnet/sf/saxon/pull/UnparsedEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/UnparsedEntity;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/UnparsedEntity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/UnparsedEntity;->c:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/UnparsedEntity;->b:Ljava/lang/String;

    return-object p0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/UnparsedEntity;->d:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/UnparsedEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/UnparsedEntity;->c:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/pull/UnparsedEntity;->b:Ljava/lang/String;

    return-void
.end method
