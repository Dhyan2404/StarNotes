.class final Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneSubGroup"
.end annotation


# instance fields
.field bMethod:S

.field dMethod:S

.field sub:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;SS)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->sub:Lcom/sun/org/apache/xerces/internal/impl/xs/XSElementDecl;

    .line 4
    iput-short p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->dMethod:S

    .line 5
    iput-short p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/SubstitutionGroupHandler$OneSubGroup;->bMethod:S

    return-void
.end method
