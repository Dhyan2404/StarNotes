.class public final Lcom/onyx/android/sdk/replicator/bean/KSyncType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0014\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/onyx/android/sdk/replicator/bean/KSyncType;",
        "",
        "()V",
        "ALIYUN_KSYNC",
        "",
        "APP_PULL_KSYNC",
        "APP_PUSH_KSYNC",
        "BAIDUYUN_SYNC",
        "DROPBOX_SYNC",
        "EVERNOTE_SYNC",
        "GOOGLE_DRIVE_KSYNC",
        "NUT_STORE_KSYNC",
        "ONENOTE_SYNC",
        "ONE_DRIVE_KSYNC",
        "ONYX_CONTENT_SYNC",
        "ONYX_TREE_SYNC",
        "WEBDAV_CLOUD_KSYNC",
        "YNOTE_SYNC",
        "isThirdPartySyncType",
        "",
        "syncType",
        "toString",
        "",
        "sdk-replicator_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ALIYUN_KSYNC:I = 0xc

.field public static final APP_PULL_KSYNC:I = 0x7

.field public static final APP_PUSH_KSYNC:I = 0x6

.field public static final BAIDUYUN_SYNC:I = 0x5

.field public static final DROPBOX_SYNC:I = 0x3

.field public static final EVERNOTE_SYNC:I = 0x2

.field public static final GOOGLE_DRIVE_KSYNC:I = 0x9

.field public static final INSTANCE:Lcom/onyx/android/sdk/replicator/bean/KSyncType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NUT_STORE_KSYNC:I = 0xa

.field public static final ONENOTE_SYNC:I = 0x4

.field public static final ONE_DRIVE_KSYNC:I = 0x8

.field public static final ONYX_CONTENT_SYNC:I = 0x0

.field public static final ONYX_TREE_SYNC:I = 0xd

.field public static final WEBDAV_CLOUD_KSYNC:I = 0xb

.field public static final YNOTE_SYNC:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/bean/KSyncType;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncType;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/bean/KSyncType;->INSTANCE:Lcom/onyx/android/sdk/replicator/bean/KSyncType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isThirdPartySyncType(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method public final toString(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_1
    const-string p0, "ONYX_TREE_SYNC"

    goto :goto_0

    :pswitch_2
    const-string p0, "WEBDAV_CLOUD_KSYNC"

    goto :goto_0

    :pswitch_3
    const-string p0, "NUT_STORE_KSYNC"

    goto :goto_0

    :pswitch_4
    const-string p0, "GOOGLE_DRIVE_KSYNC"

    goto :goto_0

    :pswitch_5
    const-string p0, "ONE_DRIVE_KSYNC"

    goto :goto_0

    :pswitch_6
    const-string p0, "APP_PULL_KSYNC"

    goto :goto_0

    :pswitch_7
    const-string p0, "APP_PUSH_KSYNC"

    goto :goto_0

    :pswitch_8
    const-string p0, "BAIDUYUN_SYNC"

    goto :goto_0

    :pswitch_9
    const-string p0, "ONENOTE_SYNC"

    goto :goto_0

    :pswitch_a
    const-string p0, "DROPBOX_SYNC"

    goto :goto_0

    :pswitch_b
    const-string p0, "EVERNOTE_SYNC"

    goto :goto_0

    :pswitch_c
    const-string p0, "YNOTE_SYNC"

    goto :goto_0

    :pswitch_d
    const-string p0, "ONYX_SYNC"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
