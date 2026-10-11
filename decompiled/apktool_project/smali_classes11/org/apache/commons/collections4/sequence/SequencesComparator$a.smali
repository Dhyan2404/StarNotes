.class public Lorg/apache/commons/collections4/sequence/SequencesComparator$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/sequence/SequencesComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->a:I

    iput p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->b:I

    iput p3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->c:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$a;->a:I

    return p0
.end method
