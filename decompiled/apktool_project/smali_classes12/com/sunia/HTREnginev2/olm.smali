.class public final synthetic Lcom/sunia/HTREnginev2/olm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field public final synthetic a:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/olm;->a:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    return-void
.end method


# virtual methods
.method public final applyAsLong(I)J
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/olm;->a:Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;

    invoke-static {p0, p1}, Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;->j(Lorg/apache/commons/compress/archivers/sevenz/SevenZOutputFile;I)J

    move-result-wide p0

    return-wide p0
.end method
