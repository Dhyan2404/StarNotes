.class public final synthetic Lcom/sunia/HTREnginev2/rd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lorg/apache/commons/compress/archivers/ArchiveStreamFactory;->e()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method
