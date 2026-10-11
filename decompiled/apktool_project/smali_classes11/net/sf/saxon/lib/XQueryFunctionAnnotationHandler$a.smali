.class public Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/StructuredQName;

.field public b:Lnet/sf/saxon/om/StructuredQName;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/StructuredQName;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->a:Lnet/sf/saxon/om/StructuredQName;

    iput-object p2, p0, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->b:Lnet/sf/saxon/om/StructuredQName;

    iput-object p3, p0, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/HashSet;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(I)V

    iput-object p1, p0, Lnet/sf/saxon/lib/XQueryFunctionAnnotationHandler$a;->d:Ljava/util/Set;

    invoke-static {p1, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method
