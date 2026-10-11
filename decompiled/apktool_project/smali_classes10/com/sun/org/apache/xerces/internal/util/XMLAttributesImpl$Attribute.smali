.class Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field public augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

.field public name:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field public next:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;

.field public nonNormalizedValue:Ljava/lang/String;

.field public schemaId:Z

.field public specified:Z

.field public type:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public xmlValue:Lcom/sun/org/apache/xerces/internal/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->name:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl$Attribute;->augs:Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    return-void
.end method
