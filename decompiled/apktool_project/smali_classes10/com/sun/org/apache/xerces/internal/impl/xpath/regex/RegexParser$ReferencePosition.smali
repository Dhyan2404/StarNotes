.class Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegexParser$ReferencePosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegexParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferencePosition"
.end annotation


# instance fields
.field position:I

.field refNumber:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegexParser$ReferencePosition;->refNumber:I

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xpath/regex/RegexParser$ReferencePosition;->position:I

    return-void
.end method
