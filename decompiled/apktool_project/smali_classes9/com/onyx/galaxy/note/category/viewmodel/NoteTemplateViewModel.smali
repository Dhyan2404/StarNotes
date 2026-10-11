.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;,
        Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,510:1\n1549#2:511\n1620#2,3:512\n1#3:515\n*S KotlinDebug\n*F\n+ 1 NoteTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel\n*L\n77#1:511\n77#1:512,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u00086\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010%\n\u0002\u0008\u0013\u0018\u0000 \u00a7\u00012\u00020\u0001:\u0002\u00a7\u0001B\t\u00a2\u0006\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J&\u0010\n\u001a\u00020\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0002J\u0016\u0010\u0010\u001a\u00020\u00022\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0002H\u0002J\u0008\u0010\u0012\u001a\u00020\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0002H\u0002J\u0008\u0010\u0014\u001a\u00020\u0002H\u0002J\u0016\u0010\u0017\u001a\u00020\u00022\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000eH\u0002J\u0016\u0010\u001a\u001a\u00020\u00022\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000eH\u0002J\u0008\u0010\u001b\u001a\u00020\u0006H\u0002J\u0008\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J\u0008\u0010 \u001a\u00020\u0002H\u0002J\u0008\u0010!\u001a\u00020\u0002H\u0002J\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\"0\u000eJ\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$J\u0006\u0010(\u001a\u00020\'J\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00020)J\u0016\u0010.\u001a\u00020\u00022\u0006\u0010,\u001a\u00020+2\u0006\u0010-\u001a\u00020\'J\u0016\u0010/\u001a\u00020\u00022\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\'J\u0006\u00100\u001a\u00020\u0002J\u0006\u00101\u001a\u00020\u0002J\u000e\u00103\u001a\u00020\u00022\u0006\u00102\u001a\u00020\u0008J\u0006\u00104\u001a\u00020\u0008J\u0006\u00105\u001a\u00020\u0002J\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u0008J\u0014\u00109\u001a\u00020\u00022\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020+0\u000eJ\u0006\u0010:\u001a\u00020\"J\u0006\u0010;\u001a\u00020\"J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u001dJ\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020=J\u0006\u0010@\u001a\u00020=J\u000e\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AJ\u000e\u0010D\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AJ\u0012\u0010E\u001a\u00020\u00022\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010F\u001a\u00020\u00022\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+R$\u0010M\u001a\u0004\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010H\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR(\u0010T\u001a\u0008\u0012\u0004\u0012\u00020\u001d0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010O\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010SR\"\u0010Z\u001a\u00020\"8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010YR(\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020=0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010O\u001a\u0004\u0008@\u0010Q\"\u0004\u0008[\u0010SR(\u0010_\u001a\u0008\u0012\u0004\u0012\u00020\'0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010O\u001a\u0004\u0008]\u0010Q\"\u0004\u0008^\u0010SR*\u0010b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010+0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010O\u001a\u0004\u0008`\u0010Q\"\u0004\u0008a\u0010SR(\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010O\u001a\u0004\u0008c\u0010Q\"\u0004\u0008d\u0010SR.\u0010g\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010O\u001a\u0004\u0008e\u0010Q\"\u0004\u0008f\u0010SR.\u0010k\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00150\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010O\u001a\u0004\u0008i\u0010Q\"\u0004\u0008j\u0010SR.\u0010n\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010O\u001a\u0004\u0008l\u0010Q\"\u0004\u0008m\u0010SR.\u0010q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010O\u001a\u0004\u0008o\u0010Q\"\u0004\u0008p\u0010SR.\u0010t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010O\u001a\u0004\u0008r\u0010Q\"\u0004\u0008s\u0010SR.\u0010w\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010O\u001a\u0004\u0008u\u0010Q\"\u0004\u0008v\u0010SR\"\u0010z\u001a\u00020\u00088\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008x\u0010y\u001a\u0004\u0008z\u0010{\"\u0004\u0008|\u0010}R*\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020A0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0013\n\u0004\u0008~\u0010O\u001a\u0004\u0008\u007f\u0010Q\"\u0005\u0008\u0080\u0001\u0010SR1\u0010\u0084\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0\u000e0N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0014\n\u0005\u0008\u0082\u0001\u0010O\u001a\u0004\u0008&\u0010Q\"\u0005\u0008\u0083\u0001\u0010SR,\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0001\u0010\u0087\u0001\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001\"\u0006\u0008\u008a\u0001\u0010\u008b\u0001R*\u0010\u0094\u0001\u001a\u00030\u008d\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u008e\u0001\u0010\u008f\u0001\u001a\u0006\u0008\u0090\u0001\u0010\u0091\u0001\"\u0006\u0008\u0092\u0001\u0010\u0093\u0001R6\u0010\u009c\u0001\u001a\u000f\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020+0\u0095\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u0098\u0001\u0010\u0099\u0001\"\u0006\u0008\u009a\u0001\u0010\u009b\u0001R6\u0010\u00a0\u0001\u001a\u000f\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020\u000b0\u0095\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u009d\u0001\u0010\u0097\u0001\u001a\u0006\u0008\u009e\u0001\u0010\u0099\u0001\"\u0006\u0008\u009f\u0001\u0010\u009b\u0001R,\u0010\u00a4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00080N8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008\u00a1\u0001\u0010O\u001a\u0005\u0008\u00a2\u0001\u0010Q\"\u0005\u0008\u00a3\u0001\u0010S\u00a8\u0006\u00a8\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "",
        "l",
        "Lio/reactivex/rxjava3/subjects/ReplaySubject;",
        "replaySubject",
        "Lcom/onyx/android/sdk/base/data/Orientation;",
        "defaultOrientation",
        "",
        "onlyCoverChange",
        "o",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "paperModel",
        "n",
        "",
        "customTemplateModels",
        "r",
        "f",
        "e",
        "m",
        "i",
        "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
        "templateCategories",
        "k",
        "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
        "coverCategories",
        "j",
        "g",
        "h",
        "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
        "type",
        "t",
        "s",
        "q",
        "",
        "getTagIdList",
        "",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
        "getTagList",
        "",
        "getOrientationSafely",
        "Lio/reactivex/rxjava3/core/Observable;",
        "updateFragmentArgs",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "model",
        "color",
        "selectCoverColor",
        "selectPaperColor",
        "loadData",
        "loadCustomPaperList",
        "isSelectedDelete",
        "loadCustomPaperByDelete",
        "isOfficialTemplateSourceType",
        "loadCustomCoverList",
        "deleteSelected",
        "loadCustomCoverByDelete",
        "customCoverModels",
        "updateCoverSelect",
        "getCoverModelStatisticName",
        "getPaperModelStatisticName",
        "updateTemplateDisplayType",
        "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
        "sourceType",
        "updateTemplateSourceType",
        "getTemplateSourceType",
        "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
        "sizeFormat",
        "updatePaperModelSizeFormat",
        "updateCoverModelSizeFormat",
        "checkPaperSelected",
        "checkCoverSelected",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "getDocManagerBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setDocManagerBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "docManagerBundle",
        "Landroidx/lifecycle/MutableLiveData;",
        "Landroidx/lifecycle/MutableLiveData;",
        "getTemplateType",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setTemplateType",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "templateType",
        "Ljava/lang/String;",
        "getCreateNoteName",
        "()Ljava/lang/String;",
        "setCreateNoteName",
        "(Ljava/lang/String;)V",
        "createNoteName",
        "setTemplateSourceType",
        "templateSourceType",
        "getOrientation",
        "setOrientation",
        "orientation",
        "getCoverModel",
        "setCoverModel",
        "coverModel",
        "getPaperModel",
        "setPaperModel",
        "getCoverCategoryList",
        "setCoverCategoryList",
        "coverCategoryList",
        "p",
        "getPaperCategoryList",
        "setPaperCategoryList",
        "paperCategoryList",
        "getOfficialPaperList",
        "setOfficialPaperList",
        "officialPaperList",
        "getOfficialCoverList",
        "setOfficialCoverList",
        "officialCoverList",
        "getCustomCoverList",
        "setCustomCoverList",
        "customCoverList",
        "getCustomPaperList",
        "setCustomPaperList",
        "customPaperList",
        "u",
        "Z",
        "isContainsCover",
        "()Z",
        "setContainsCover",
        "(Z)V",
        "v",
        "getTemplateSize",
        "setTemplateSize",
        "templateSize",
        "w",
        "setTagList",
        "tagList",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "x",
        "Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "getGeoLayout",
        "()Lcom/onyx/android/sdk/genericshape/GeoLayout;",
        "setGeoLayout",
        "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V",
        "geoLayout",
        "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        "y",
        "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        "getTemplateFragmentArgs",
        "()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        "setTemplateFragmentArgs",
        "(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)V",
        "templateFragmentArgs",
        "",
        "z",
        "Ljava/util/Map;",
        "getCustomCoverMultiSelectList",
        "()Ljava/util/Map;",
        "setCustomCoverMultiSelectList",
        "(Ljava/util/Map;)V",
        "customCoverMultiSelectList",
        "J",
        "getCustomPaperMultiSelectList",
        "setCustomPaperMultiSelectList",
        "customPaperMultiSelectList",
        "O",
        "getVisibleMaterialButton",
        "setVisibleMaterialButton",
        "visibleMaterialButton",
        "<init>",
        "()V",
        "Companion",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNoteTemplateViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,510:1\n1549#2:511\n1620#2,3:512\n1#3:515\n*S KotlinDebug\n*F\n+ 1 NoteTemplateViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel\n*L\n77#1:511\n77#1:512,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public J:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public O:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public k:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public m:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public p:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public s:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public u:Z

.field public v:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public x:Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Companion:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$Companion;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Q:Ljava/util/List;

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Z:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    const-string v0, ""

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->j:Ljava/lang/String;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getContainsCoverOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->u:Z

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->A4:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->z:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->J:Ljava/util/Map;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public static final synthetic access$ensureSavedCoverValid(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->e()V

    return-void
.end method

.method public static final synthetic access$ensureSavedPaperValid(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->f()V

    return-void
.end method

.method public static final synthetic access$getBASE_CATEGORIES_SOURCE$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Q:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMATERIALS_CATEGORIES_SOURCE$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Z:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$loadOfficialCoverList(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->j(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$loadOfficialPaperList(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setTemplateParams(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public static final synthetic access$updatePaperSelect(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->r(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic checkCoverSelected$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkCoverSelected(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    return-void
.end method

.method public static synthetic checkPaperSelected$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->checkPaperSelected(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public static synthetic d(ZLcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->p(ZLcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    return-void
.end method

.method public static final p(ZLcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$defaultOrientation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$replaySubject"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getOrientation()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p3, p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final checkCoverSelected(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/CheckCoverIsExistAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/cover/CheckCoverIsExistAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$a;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$b;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$c;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$c;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$4;->INSTANCE:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$4;

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkCoverSelected$5;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$d;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$d;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final checkPaperSelected(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/CheckTemplateExistAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/template/CheckTemplateExistAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$e;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$e;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$f;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$f;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$g;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$g;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "flatMap(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$4;->INSTANCE:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$4;

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$checkPaperSelected$5;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$h;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final e()V
    .locals 2

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getCoverOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/CheckCoverIsExistAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/cover/CheckCoverIsExistAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$i;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f()V
    .locals 3

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/CheckTemplateExistAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/action/template/CheckTemplateExistAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$j;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$j;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->h()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    :goto_0
    return-object p0
.end method

.method public final getCoverCategoryList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCoverModel()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCoverModelStatisticName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTitleResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getLocalTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTitleResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getLocalTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_2
    const-string p0, "custom_cover"

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getCreateNoteName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final getCustomCoverList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCustomCoverMultiSelectList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->z:Ljava/util/Map;

    return-object p0
.end method

.method public final getCustomPaperList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCustomPaperMultiSelectList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->J:Ljava/util/Map;

    return-object p0
.end method

.method public final getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->x:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-object p0
.end method

.method public final getOfficialCoverList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getOfficialPaperList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getOrientation()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getOrientationSafely()I
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final getPaperCategoryList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPaperModel()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getPaperModelStatisticName()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitleResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitleResName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_2
    const-string p0, "custom_page"

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getTagIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getTagList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTagList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    return-object p0
.end method

.method public final getTemplateSize()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTemplateSourceType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    :cond_0
    return-object p0
.end method

.method public final getTemplateType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getVisibleMaterialButton()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final h()Lcom/onyx/android/sdk/base/data/Orientation;
    .locals 0

    sget-object p0, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    return-object p0
.end method

.method public final i()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Q:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/cover/LoadCoverCategoryListAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$k;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$k;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final isContainsCover()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->u:Z

    return p0
.end method

.method public final isOfficialTemplateSourceType()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientationSafely()I

    move-result v1

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-direct {v0, p1, v1, v2}, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;-><init>(Ljava/util/List;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$p;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$p;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientationSafely()I

    move-result v0

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v2

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction;-><init>(Ljava/util/List;IZLcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$q;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$q;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final l()V
    .locals 6

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/LoadTagByIdAction;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getTagIdList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/category/action/LoadTagByIdAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$r;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$r;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadCustomCoverByDelete(Z)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadCustomCoverAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/cover/LoadCustomCoverAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$l;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$l;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadCustomCoverList()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/cover/LoadCustomCoverAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/cover/LoadCustomCoverAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$m;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadCustomPaperByDelete(Z)V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadCustomTemplateListAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/template/LoadCustomTemplateListAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$n;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$n;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Z)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadCustomPaperList()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadCustomTemplateListAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/template/LoadCustomTemplateListAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$o;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$o;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadData()V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/onyx/galaxy/note/category/action/template/ImportOfficialTemplateCoverToDBAction;-><init>(Lcom/onyx/galaxy/note/category/data/ImportDataStrategy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->i()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadCustomCoverList()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadCustomPaperList()V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v1

    sget-object v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->Q:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateCategoryListAction;-><init>(ZLjava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$s;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$s;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->BOUNDLESS:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->h()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CUSTOM"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->CUSTOM:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->Companion:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat$Companion;->safetyValueOf(Ljava/lang/String;)Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final o(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/base/data/Orientation;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/subjects/ReplaySubject<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/Orientation;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/bkground/LoadCoverByJsonBeanAction;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$t;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$u;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$u;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e4k;

    invoke-direct {v1, p3, p0, p2, p1}, Lcom/sunia/HTREnginev2/e4k;-><init>(ZLcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->CUSTOM:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    :goto_0
    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->CUSTOM:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    :goto_0
    return-void
.end method

.method public final selectCoverColor(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->selectByFillColor(Ljava/lang/Integer;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectPaperColor(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;I)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->selectByFillColor(Ljava/lang/Integer;)Z

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setContainsCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->u:Z

    return-void
.end method

.method public final setCoverCategoryList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/CoverCategory;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->o:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setCoverModel(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setCreateNoteName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->j:Ljava/lang/String;

    return-void
.end method

.method public final setCustomCoverList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setCustomCoverMultiSelectList(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->z:Ljava/util/Map;

    return-void
.end method

.method public final setCustomPaperList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setCustomPaperMultiSelectList(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->J:Ljava/util/Map;

    return-void
.end method

.method public final setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->h:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setGeoLayout(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/genericshape/GeoLayout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->x:Lcom/onyx/android/sdk/genericshape/GeoLayout;

    return-void
.end method

.method public final setOfficialCoverList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setOfficialPaperList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->q:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setOrientation(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setPaperCategoryList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/TemplateCategory;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->p:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setPaperModel(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTagList(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTemplateFragmentArgs(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    return-void
.end method

.method public final setTemplateSize(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTemplateSourceType(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setTemplateType(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final setVisibleMaterialButton(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method public final t(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->q()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->s()V

    :goto_0
    return-void
.end method

.method public final updateCoverModelSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setSizeFormat(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateCoverSelect(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customCoverModels"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->m:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final updateFragmentArgs()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lio/reactivex/rxjava3/subjects/ReplaySubject;->create()Lio/reactivex/rxjava3/subjects/ReplaySubject;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->g()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l()V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->o(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/base/data/Orientation;Z)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->l:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->done(Lio/reactivex/rxjava3/core/Observer;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/action/template/LoadTemplateByJsonBeanAction;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;

    invoke-direct {v3, p0, v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel$v;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lcom/onyx/android/sdk/base/data/Orientation;Lio/reactivex/rxjava3/subjects/ReplaySubject;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->setChangeContainsCover(Z)V

    :cond_3
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->y:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getChangeContainsCover()Z

    move-result v2

    iput-boolean v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->u:Z

    invoke-virtual {p0, v0, v1, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->o(Lio/reactivex/rxjava3/subjects/ReplaySubject;Lcom/onyx/android/sdk/base/data/Orientation;Z)V

    return-object v0
.end method

.method public final updatePaperModelSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sizeFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->n:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateTemplateDisplayType(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->i:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->t(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V

    return-void
.end method

.method public final updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/data/TemplateSourceType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sourceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
