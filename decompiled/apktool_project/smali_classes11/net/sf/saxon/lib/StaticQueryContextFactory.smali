.class public Lnet/sf/saxon/lib/StaticQueryContextFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStaticQueryContext(Lnet/sf/saxon/Configuration;Z)Lnet/sf/saxon/query/StaticQueryContext;
    .locals 0

    new-instance p0, Lnet/sf/saxon/query/StaticQueryContext;

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/query/StaticQueryContext;-><init>(Lnet/sf/saxon/Configuration;Z)V

    return-object p0
.end method
