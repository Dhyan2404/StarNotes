.class public final synthetic Lcom/sunia/HTREnginev2/md;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;

    invoke-static {p1}, Lorg/apache/commons/compress/harmony/pack200/Archive$b;->a(Lorg/apache/commons/compress/harmony/pack200/Pack200ClassReader;)I

    move-result p0

    return p0
.end method
