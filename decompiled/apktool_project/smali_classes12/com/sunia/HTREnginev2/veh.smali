.class public final synthetic Lcom/sunia/HTREnginev2/veh;
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

    check-cast p1, Ljava/lang/Short;

    invoke-static {p1}, Lorg/apache/poi/hssf/eventusermodel/HSSFRequest;->a(Ljava/lang/Short;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
