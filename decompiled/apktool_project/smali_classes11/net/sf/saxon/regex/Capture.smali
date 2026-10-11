.class public Lnet/sf/saxon/regex/Capture;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:I

.field public groupNr:I

.field public start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnet/sf/saxon/regex/Capture;->groupNr:I

    iput p2, p0, Lnet/sf/saxon/regex/Capture;->start:I

    iput p3, p0, Lnet/sf/saxon/regex/Capture;->end:I

    return-void
.end method
