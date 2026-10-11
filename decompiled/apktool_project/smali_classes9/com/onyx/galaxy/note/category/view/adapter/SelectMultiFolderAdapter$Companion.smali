.class public final Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00048FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;",
        "",
        "()V",
        "UNCLASSIFIED_FOLDER_ID",
        "",
        "getUNCLASSIFIED_FOLDER_ID",
        "()Ljava/lang/String;",
        "UNCLASSIFIED_FOLDER_NAME",
        "getUNCLASSIFIED_FOLDER_NAME",
        "UNCLASSIFIED_FOLDER_NAME$delegate",
        "Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;",
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
.field public static final synthetic a:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "UNCLASSIFIED_FOLDER_NAME"

    const-string v3, "getUNCLASSIFIED_FOLDER_NAME()Ljava/lang/String;"

    const-class v4, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;->a:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getUNCLASSIFIED_FOLDER_ID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;->access$getUNCLASSIFIED_FOLDER_ID$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUNCLASSIFIED_FOLDER_NAME()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter;->access$getUNCLASSIFIED_FOLDER_NAME$delegate$cp()Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/view/adapter/SelectMultiFolderAdapter$Companion;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/onyx/android/sdk/base/data/DelegatedValueProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
