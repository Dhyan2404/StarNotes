.class public final Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/util/SoftReferenceSymbolTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SREntry"
.end annotation


# instance fields
.field public bucket:I

.field public next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field public prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    invoke-direct {v0, p1}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->a(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CIILorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;-><init>(Ljava/lang/String;[CII)V

    invoke-direct {p0, v0, p7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p0, p5, p6}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->a(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;I)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz p1, :cond_0

    iput-object p0, p1, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput p2, p0, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    return-void
.end method
