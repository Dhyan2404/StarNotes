.class public Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/params/ConnPerRoute;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;-><init>(Lorg/apache/http/conn/routing/HttpRoute;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool$a;->a:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 0

    iget-object p0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool$a;->a:Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;

    iget p0, p0, Lorg/apache/http/impl/conn/tsccm/RouteSpecificPool;->maxEntries:I

    return p0
.end method
