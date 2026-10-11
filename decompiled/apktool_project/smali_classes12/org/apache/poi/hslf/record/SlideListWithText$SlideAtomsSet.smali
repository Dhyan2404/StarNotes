.class public Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hslf/record/SlideListWithText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideAtomsSet"
.end annotation


# instance fields
.field private final slidePersistAtom:Lorg/apache/poi/hslf/record/SlidePersistAtom;

.field private final slideRecords:[Lorg/apache/poi/hslf/record/Record;


# direct methods
.method public constructor <init>(Lorg/apache/poi/hslf/record/SlidePersistAtom;[Lorg/apache/poi/hslf/record/Record;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->slidePersistAtom:Lorg/apache/poi/hslf/record/SlidePersistAtom;

    invoke-virtual {p2}, [Lorg/apache/poi/hslf/record/Record;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/poi/hslf/record/Record;

    iput-object p1, p0, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->slideRecords:[Lorg/apache/poi/hslf/record/Record;

    return-void
.end method


# virtual methods
.method public getSlidePersistAtom()Lorg/apache/poi/hslf/record/SlidePersistAtom;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->slidePersistAtom:Lorg/apache/poi/hslf/record/SlidePersistAtom;

    return-object p0
.end method

.method public getSlideRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hslf/record/SlideListWithText$SlideAtomsSet;->slideRecords:[Lorg/apache/poi/hslf/record/Record;

    return-object p0
.end method
