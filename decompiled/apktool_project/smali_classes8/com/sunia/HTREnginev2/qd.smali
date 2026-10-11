.class public final synthetic Lcom/sunia/HTREnginev2/qd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/onyx/engine/sdk/archive/ArchiveNative;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/engine/sdk/archive/ArchiveNative;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qd;->e:Lcom/onyx/engine/sdk/archive/ArchiveNative;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qd;->e:Lcom/onyx/engine/sdk/archive/ArchiveNative;

    check-cast p1, Lcom/onyx/engine/sdk/BatchParameter;

    invoke-virtual {p0, p1}, Lcom/onyx/engine/sdk/archive/ArchiveNative;->getFileHeaderList(Lcom/onyx/engine/sdk/BatchParameter;)Lcom/onyx/engine/sdk/archive/FileHeaderList;

    move-result-object p0

    return-object p0
.end method
