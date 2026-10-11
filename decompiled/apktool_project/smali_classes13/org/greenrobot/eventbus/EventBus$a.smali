.class public Lorg/greenrobot/eventbus/EventBus$a;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/greenrobot/eventbus/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lorg/greenrobot/eventbus/EventBus$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lorg/greenrobot/eventbus/EventBus;


# direct methods
.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lorg/greenrobot/eventbus/EventBus$a;->a:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/greenrobot/eventbus/EventBus$d;
    .locals 0

    new-instance p0, Lorg/greenrobot/eventbus/EventBus$d;

    invoke-direct {p0}, Lorg/greenrobot/eventbus/EventBus$d;-><init>()V

    return-object p0
.end method

.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/greenrobot/eventbus/EventBus$a;->a()Lorg/greenrobot/eventbus/EventBus$d;

    move-result-object p0

    return-object p0
.end method
