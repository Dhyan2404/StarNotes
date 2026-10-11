.class public final Lorg/apache/xerces/impl/xs/traversers/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/impl/xs/traversers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/xerces/impl/dv/XSFacets;

.field public final b:Lorg/w3c/dom/Element;

.field public final c:S

.field public final d:S


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/dv/XSFacets;Lorg/w3c/dom/Element;SS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/impl/xs/traversers/a$a;->a:Lorg/apache/xerces/impl/dv/XSFacets;

    iput-object p2, p0, Lorg/apache/xerces/impl/xs/traversers/a$a;->b:Lorg/w3c/dom/Element;

    iput-short p3, p0, Lorg/apache/xerces/impl/xs/traversers/a$a;->c:S

    iput-short p4, p0, Lorg/apache/xerces/impl/xs/traversers/a$a;->d:S

    return-void
.end method
