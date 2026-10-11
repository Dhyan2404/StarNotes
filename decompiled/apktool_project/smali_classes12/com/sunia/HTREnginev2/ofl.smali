.class public final synthetic Lcom/sunia/HTREnginev2/ofl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hslf/record/RecordTypes$RecordConstructor;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply([BII)Lorg/apache/poi/hslf/record/Record;
    .locals 0

    new-instance p0, Lorg/apache/poi/hslf/record/FontEntityAtom;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/poi/hslf/record/FontEntityAtom;-><init>([BII)V

    return-object p0
.end method
