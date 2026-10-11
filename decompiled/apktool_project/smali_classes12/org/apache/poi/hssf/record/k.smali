.class public final synthetic Lorg/apache/poi/hssf/record/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;

    invoke-direct {p0, p1}, Lorg/apache/poi/hssf/record/PaletteRecord$PColor;-><init>(I)V

    return-object p0
.end method
