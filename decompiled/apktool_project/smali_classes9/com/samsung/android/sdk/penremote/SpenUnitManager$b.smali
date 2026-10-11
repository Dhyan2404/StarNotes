.class public Lcom/samsung/android/sdk/penremote/SpenUnitManager$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/penremote/SpenUnitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/sdk/penremote/SpenUnitManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/penremote/SpenUnitManager;-><init>(Lcom/samsung/android/sdk/penremote/SpenUnitManager$a;)V

    sput-object v0, Lcom/samsung/android/sdk/penremote/SpenUnitManager$b;->a:Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/sdk/penremote/SpenUnitManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/penremote/SpenUnitManager$b;->a:Lcom/samsung/android/sdk/penremote/SpenUnitManager;

    return-object v0
.end method
