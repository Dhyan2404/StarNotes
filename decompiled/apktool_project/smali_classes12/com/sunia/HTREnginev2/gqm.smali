.class public final synthetic Lcom/sunia/HTREnginev2/gqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic e:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gqm;->e:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gqm;->e:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    invoke-static {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->b(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
