.class public final synthetic Lcom/sunia/HTREnginev2/fek;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic a:Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/ToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/fek;->a:Ljava/util/function/ToLongFunction;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/fek;->a:Ljava/util/function/ToLongFunction;

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->a(Ljava/util/function/ToLongFunction;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
