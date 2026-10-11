.class public final synthetic Lcom/sunia/HTREnginev2/y7n;
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

    check-cast p1, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;

    invoke-interface {p1}, Lorg/apache/poi/convert/xwpf/property/ITblPropertyFetcher;->getCTBorders()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBorder;

    move-result-object p0

    return-object p0
.end method
