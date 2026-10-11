.class final Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HashEntry"
.end annotation


# instance fields
.field hash:I

.field key:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

.field next:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

.field value:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;IILcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->key:Lcom/sun/org/apache/xml/internal/dtm/ref/ExtendedType;

    iput p2, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->value:I

    iput p3, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->hash:I

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;->next:Lcom/sun/org/apache/xml/internal/dtm/ref/ExpandedNameTable$HashEntry;

    return-void
.end method
