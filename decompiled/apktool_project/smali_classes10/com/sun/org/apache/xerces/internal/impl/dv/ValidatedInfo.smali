.class public Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public actualValue:Ljava/lang/Object;

.field public actualValueType:S

.field public itemValueTypes:Lcom/sun/org/apache/xerces/internal/xs/ShortList;

.field public memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

.field public memberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

.field public normalizedValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberType:Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->memberTypes:[Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
