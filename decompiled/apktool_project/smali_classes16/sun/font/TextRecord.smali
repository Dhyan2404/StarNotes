.class public final Lsun/font/TextRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public limit:I

.field public max:I

.field public min:I

.field public start:I

.field public text:[C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([CIIII)V
    .locals 0

    iput-object p1, p0, Lsun/font/TextRecord;->text:[C

    iput p2, p0, Lsun/font/TextRecord;->start:I

    iput p3, p0, Lsun/font/TextRecord;->limit:I

    iput p4, p0, Lsun/font/TextRecord;->min:I

    iput p5, p0, Lsun/font/TextRecord;->max:I

    return-void
.end method
