.class public final Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation build Ldagger/hilt/InstallIn;
    value = {
        Ldagger/hilt/components/SingletonComponent;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;",
        "",
        "()V",
        "getMLResultConvert",
        "Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;",
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
.field public static final INSTANCE:Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;-><init>()V

    sput-object v0, Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;->INSTANCE:Lcom/onyx/galaxy/note/hilt/convert/HWRResultConvertModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMLResultConvert()Lcom/onyx/android/sdk/hwr/service/convert/HWRResultConvertProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/StringKey;
        value = "GoogleML"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/hwr/service/convert/MLResultConvertProvider;-><init>()V

    return-object p0
.end method
