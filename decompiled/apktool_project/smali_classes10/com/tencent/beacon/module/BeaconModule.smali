.class public interface abstract Lcom/tencent/beacon/module/BeaconModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/tencent/beacon/module/ModuleName;",
            "Lcom/tencent/beacon/module/BeaconModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/beacon/module/BeaconModule;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;)V
.end method
