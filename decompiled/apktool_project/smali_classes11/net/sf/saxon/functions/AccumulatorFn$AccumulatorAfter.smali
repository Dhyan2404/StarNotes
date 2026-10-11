.class public Lnet/sf/saxon/functions/AccumulatorFn$AccumulatorAfter;
.super Lnet/sf/saxon/functions/AccumulatorFn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/functions/AccumulatorFn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccumulatorAfter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AccumulatorFn;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhase()Lnet/sf/saxon/functions/AccumulatorFn$Phase;
    .locals 0

    sget-object p0, Lnet/sf/saxon/functions/AccumulatorFn$Phase;->AFTER:Lnet/sf/saxon/functions/AccumulatorFn$Phase;

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "AccumulatorAfter"

    return-object p0
.end method
