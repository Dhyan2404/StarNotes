.class public Lnet/sf/saxon/expr/CallableDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/CallableDelegate$Lambda;
    }
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/expr/CallableDelegate$Lambda;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/CallableDelegate$Lambda;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/CallableDelegate;->e:Lnet/sf/saxon/expr/CallableDelegate$Lambda;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/CallableDelegate;->e:Lnet/sf/saxon/expr/CallableDelegate$Lambda;

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/expr/CallableDelegate$Lambda;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method
