.class public final Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;
.super Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/settings/ui/SettingsActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;",
        "Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;",
        "()V",
        "getNavigationResId",
        "",
        "Companion",
        "note_overseasRelease"
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
.field public static final Companion:Lcom/onyx/galaxy/note/settings/ui/SettingsActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SETTINGS_INDEX_CLOUD_BACK:I = 0x2

.field public static final SETTINGS_INDEX_DOC:I = 0x1

.field public static final SETTINGS_INDEX_STYLUS:I = 0x3

.field public static final SETTING_MENU_NAME:Ljava/lang/String; = "menuName"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/settings/ui/SettingsActivity;->Companion:Lcom/onyx/galaxy/note/settings/ui/SettingsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getNavigationResId()I
    .locals 0

    sget p0, Lcom/onyx/galaxy/note/R$navigation;->settings_navigation:I

    return p0
.end method
