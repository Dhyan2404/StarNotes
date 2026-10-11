.class public final Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/dom/CoreDOMImplementationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xerces/dom/CoreDOMImplementationImpl$b;->a:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    return-void
.end method
