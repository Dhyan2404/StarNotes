.class public Lcom/samsung/android/sdk/penremote/SpenRemote$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/penremote/SpenRemote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/sdk/penremote/SpenRemote;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/penremote/SpenRemote;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/penremote/SpenRemote;-><init>(Lcom/samsung/android/sdk/penremote/SpenRemote$a;)V

    sput-object v0, Lcom/samsung/android/sdk/penremote/SpenRemote$d;->a:Lcom/samsung/android/sdk/penremote/SpenRemote;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/samsung/android/sdk/penremote/SpenRemote;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/penremote/SpenRemote$d;->a:Lcom/samsung/android/sdk/penremote/SpenRemote;

    return-object v0
.end method
