.class public Lorg/apache/poi/hemf/record/emf/HemfFill$EmfPaintRgn;
.super Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hemf/record/emf/HemfFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmfPaintRgn"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hemf/record/emf/HemfFill$EmfInvertRgn;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmfRecordType()Lorg/apache/poi/hemf/record/emf/HemfRecordType;
    .locals 0

    sget-object p0, Lorg/apache/poi/hemf/record/emf/HemfRecordType;->paintRgn:Lorg/apache/poi/hemf/record/emf/HemfRecordType;

    return-object p0
.end method
