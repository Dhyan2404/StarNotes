.class public final synthetic Lcom/sunia/HTREnginev2/qkk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/apache/poi/hslf/record/Record;

    invoke-static {p1}, Lorg/apache/poi/hslf/record/PPDrawing;->k(Lorg/apache/poi/hslf/record/Record;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
