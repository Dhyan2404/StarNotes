.class public Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/ui/CommonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCommonDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog$Builder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,439:1\n262#2,2:440\n262#2,2:442\n304#2,2:445\n304#2,2:447\n304#2,2:449\n262#2,2:451\n262#2,2:453\n262#2,2:455\n262#2,2:457\n262#2,2:459\n304#2,2:461\n262#2,2:463\n1#3:444\n420#4:465\n502#4,5:466\n*S KotlinDebug\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog$Builder\n*L\n318#1:440,2\n319#1:442,2\n378#1:445,2\n379#1:447,2\n380#1:449,2\n385#1:451,2\n386#1:453,2\n388#1:455,2\n389#1:457,2\n394#1:459,2\n404#1:461,2\n415#1:463,2\n422#1:465\n422#1:466,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u00083\u0008\u0016\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010_\u001a\u00020X\u00a2\u0006\u0005\u0008\u008a\u0001\u0010^J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0010\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0011J@\u0010\u001e\u001a\u00020\u000028\u0010\u001d\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u001c\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0018J-\u0010!\u001a\u00020\u00002%\u0010\u001d\u001a!\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001fJ\u0016\u0010#\u001a\u00020\u00002\u000e\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"J\u0010\u0010&\u001a\u00020\u00002\u0008\u0008\u0001\u0010%\u001a\u00020$J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u001bJ\u0010\u0010)\u001a\u00020\u00002\u0008\u0008\u0001\u0010(\u001a\u00020$J\u0010\u0010+\u001a\u00020\u00002\u0008\u0008\u0001\u0010*\u001a\u00020$J\u0010\u0010+\u001a\u00020\u00002\u0008\u0010,\u001a\u0004\u0018\u00010\u001bJ\u0010\u0010.\u001a\u00020\u00002\u0008\u0008\u0001\u0010-\u001a\u00020$J\u0010\u0010/\u001a\u00020\u00002\u0008\u0008\u0002\u0010/\u001a\u00020\u0011J\u0010\u00100\u001a\u00020\u00002\u0008\u0008\u0002\u00100\u001a\u00020\u0011J\u0010\u00101\u001a\u00020\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bJ\u000e\u00104\u001a\u00020\u00002\u0006\u00103\u001a\u000202J\u0018\u00107\u001a\u00020\u00002\u0006\u00105\u001a\u00020$2\u0008\u0008\u0002\u00106\u001a\u00020\u0011J\u000e\u00109\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0011J\u0010\u0010;\u001a\u00020\u00002\u0008\u0008\u0001\u0010:\u001a\u00020$J\u000e\u0010=\u001a\u00020\u00002\u0006\u0010<\u001a\u00020$J\u0010\u0010?\u001a\u00020\u00002\u0008\u0008\u0001\u0010>\u001a\u00020$J\u0010\u0010A\u001a\u00020\u00002\u0008\u0008\u0001\u0010@\u001a\u00020$J\u000e\u0010C\u001a\u00020\u00002\u0006\u0010B\u001a\u00020$J\u000e\u0010E\u001a\u00020\u00002\u0006\u0010D\u001a\u00020$J\u000e\u0010G\u001a\u00020\u00002\u0006\u0010F\u001a\u00020$J\u000e\u0010I\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0011J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0011J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0011J\u000e\u0010M\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0011J\u001a\u0010P\u001a\u00020\u00002\u0012\u0010O\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00110\u001fJ\u000e\u0010S\u001a\u00020\u00002\u0006\u0010R\u001a\u00020QJ\u000e\u0010V\u001a\u00020\u00002\u0006\u0010U\u001a\u00020TJ\u0006\u0010W\u001a\u00020\u0002R\"\u0010_\u001a\u00020X8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010Z\u001a\u0004\u0008[\u0010\\\"\u0004\u0008]\u0010^RH\u0010c\u001a4\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u0003\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(`\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR5\u0010f\u001a!\u0012\u0015\u0012\u0013\u0018\u00010 \u00a2\u0006\u000c\u0008\u0019\u0012\u0008\u0008\u001a\u0012\u0004\u0008\u0008(\u0003\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008d\u0010eR\u001e\u0010i\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008g\u0010hR\u0016\u0010%\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008j\u0010kR\u0018\u0010(\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010lR\u0018\u0010n\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008m\u0010kR\u0018\u0010p\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010oR\u0018\u0010:\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010lR\u0018\u0010>\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008q\u0010lR\u0018\u0010@\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008r\u0010lR\u0018\u0010*\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008s\u0010lR\u0018\u0010,\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008t\u0010kR\u0018\u0010-\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\t\u0010lR\u0016\u0010<\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010uR\u0016\u0010v\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010uR\u0016\u00108\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010wR\u0016\u0010x\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010wR\u0016\u0010B\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010uR\u0016\u0010D\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010uR\u0016\u0010F\u001a\u00020$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008y\u0010uR\u0016\u0010{\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008z\u0010wR\u0016\u00100\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008|\u0010wR\u0016\u0010/\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008}\u0010wR\u0016\u0010\u007f\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008~\u0010wR\u0017\u0010\u0016\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0080\u0001\u0010wR\u0017\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0081\u0001\u0010wR\u0017\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0082\u0001\u0010wR\u0017\u0010L\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0083\u0001\u0010wR\u001b\u0010\u0086\u0001\u001a\u0004\u0018\u00010Q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0001\u0010\u0085\u0001R$\u0010\u0088\u0001\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020\u00110\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0087\u0001\u0010eR\u0018\u0010U\u001a\u00020T8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0089\u0001\u0010\u0089\u0001\u00a8\u0006\u008b\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/ui/CommonDialog$Builder;",
        "",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "dialog",
        "",
        "h",
        "p",
        "i",
        "r",
        "n",
        "s",
        "q",
        "o",
        "Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;",
        "binding",
        "f",
        "t",
        "",
        "cancelable",
        "setCancelable",
        "isWarning",
        "setWarning",
        "isCancelOutside",
        "setCancelTouchOutside",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "",
        "editTextStr",
        "callback",
        "setConfirmCallback",
        "Lkotlin/Function1;",
        "Landroid/app/Dialog;",
        "setCancelCallback",
        "Lkotlin/Function0;",
        "setDismissCallback",
        "",
        "titleText",
        "setTitle",
        "title",
        "titleColor",
        "setTitleColor",
        "contentTextRes",
        "setMessage",
        "contentText",
        "progressText",
        "setProgressText",
        "hideTitle",
        "hideContent",
        "setEditTextContent",
        "Landroid/text/Spannable;",
        "spannable",
        "setContentSpannable",
        "maxLength",
        "enableCustomLength",
        "setEditTextMaxLength",
        "maxLengthVisible",
        "setEditMaxLengthVisible",
        "hintText",
        "setEditHint",
        "inputType",
        "setInputType",
        "cancelText",
        "setCancelText",
        "confirmText",
        "setConfirmText",
        "cancelTextColor",
        "setCancelColor",
        "confirmTextColor",
        "setConfirmColor",
        "dialogType",
        "setDialogType",
        "isHide",
        "setEditContentHide",
        "setCancelButtonHide",
        "setTextContentHide",
        "confirmDismiss",
        "setConfirmDismiss",
        "",
        "filter",
        "setEditCharFilter",
        "Landroid/view/View;",
        "view",
        "setView",
        "",
        "dimAmount",
        "setDimAmount",
        "create",
        "Landroid/content/Context;",
        "a",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "context",
        "editStr",
        "b",
        "Lkotlin/jvm/functions/Function2;",
        "confirmCallback",
        "c",
        "Lkotlin/jvm/functions/Function1;",
        "cancelCallback",
        "d",
        "Lkotlin/jvm/functions/Function0;",
        "dismissCallback",
        "e",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "g",
        "editText",
        "Landroid/text/Spannable;",
        "contentSpannable",
        "j",
        "k",
        "l",
        "m",
        "I",
        "editTextMaxLength",
        "Z",
        "enableEditCustomLength",
        "u",
        "v",
        "hideEditText",
        "w",
        "x",
        "y",
        "hideCancelButton",
        "z",
        "A",
        "B",
        "C",
        "D",
        "Landroid/view/View;",
        "contentView",
        "E",
        "charFilter",
        "F",
        "<init>",
        "sdk-ui_overseasRelease"
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
        "SMAP\nCommonDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog$Builder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,439:1\n262#2,2:440\n262#2,2:442\n304#2,2:445\n304#2,2:447\n304#2,2:449\n262#2,2:451\n262#2,2:453\n262#2,2:455\n262#2,2:457\n262#2,2:459\n304#2,2:461\n262#2,2:463\n1#3:444\n420#4:465\n502#4,5:466\n*S KotlinDebug\n*F\n+ 1 CommonDialog.kt\ncom/onyx/android/sdk/ui/CommonDialog$Builder\n*L\n318#1:440,2\n319#1:442,2\n378#1:445,2\n379#1:447,2\n380#1:449,2\n385#1:451,2\n386#1:453,2\n388#1:455,2\n389#1:457,2\n394#1:459,2\n404#1:461,2\n415#1:463,2\n422#1:465\n422#1:466,5\n*E\n"
    }
.end annotation


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public E:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public F:F

.field public a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/android/sdk/ui/CommonDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Dialog;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public h:Landroid/text/Spannable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:I

.field public p:I

.field public q:Z

.field public r:Z

.field public s:I

.field public t:I

.field public u:I

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->a:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->e:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->o:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->p:I

    iput v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->s:I

    iput v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->t:I

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->v:Z

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->A:Z

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->C:Z

    sget-object p1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$charFilter$1;->INSTANCE:Lcom/onyx/android/sdk/ui/CommonDialog$Builder$charFilter$1;

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->E:Lkotlin/jvm/functions/Function1;

    const p1, 0x3e99999a    # 0.3f

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->F:F

    return-void
.end method

.method public static synthetic a(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->j(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->m(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->g(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->k(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->l(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final g(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_1

    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p5

    iget-object p6, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->E:Lkotlin/jvm/functions/Function1;

    invoke-static {p5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    if-eqz p6, :cond_0

    invoke-interface {p2, p5}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public static synthetic hideContent$default(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;ZILjava/lang/Object;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->hideContent(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: hideContent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic hideTitle$default(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;ZILjava/lang/Object;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->hideTitle(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: hideTitle"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    return-void
.end method

.method public static final k(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$dialog"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->b:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "binging"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->C:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method public static final l(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->c:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final m(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Landroid/content/DialogInterface;)V
    .locals 2

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "binging"

    if-nez p2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    iget-object p2, p2, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    iget-object p0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->hideInputKeyboard(Landroid/view/View;)V

    :cond_2
    iget-object p0, p1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static synthetic setEditTextMaxLength$default(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;IZILjava/lang/Object;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setEditTextMaxLength(IZ)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setEditTextMaxLength"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final create()Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog;

    iget-object v1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/ui/CommonDialog;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->z:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-boolean v1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->A:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->t(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->r(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->n(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->q(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->p(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->o(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->s(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->h(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->i(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    return-object v0
.end method

.method public final f(Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;)V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/b5e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/b5e;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;)V

    iget-object p0, p1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    const-string p1, "editText"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/ui/EditTextExtsKt;->addFilter(Landroid/widget/EditText;Landroid/text/InputFilter;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->a:Landroid/content/Context;

    return-object p0
.end method

.method public final h(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->D:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvContent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->clEditContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v4, "clEditContainer"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->contentContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->D:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final hideContent(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->w:Z

    return-object p0
.end method

.method public final hideTitle(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->x:Z

    return-object p0
.end method

.method public final i(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 4

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvCancel:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/c5e;

    invoke-direct {v3, p0, p1}, Lcom/sunia/HTREnginev2/c5e;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance v3, Lcom/sunia/HTREnginev2/d5e;

    invoke-direct {v3, p0, p1}, Lcom/sunia/HTREnginev2/d5e;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->q:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    new-instance v1, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder$initDialogListener$3;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->setTextChangeCallback(Lkotlin/jvm/functions/Function2;)V

    :cond_3
    new-instance v0, Lcom/sunia/HTREnginev2/e5e;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/e5e;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Lcom/sunia/HTREnginev2/f5e;

    invoke-direct {v0, p1, p0}, Lcom/sunia/HTREnginev2/f5e;-><init>(Lcom/onyx/android/sdk/ui/CommonDialog;Lcom/onyx/android/sdk/ui/CommonDialog$Builder;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public final n(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 6

    iget p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->u:I

    const-string v0, "textContainer"

    const/16 v1, 0x8

    const/4 v2, 0x0

    const-string v3, "loadingContainer"

    const/4 v4, 0x0

    const-string v5, "binging"

    if-nez p0, :cond_2

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v4

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->loadingContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, p0

    :goto_0
    iget-object p0, v4, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->textContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v4

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->loadingContainer:Landroid/widget/LinearLayout;

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, p0

    :goto_1
    iget-object p0, v4, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->textContainer:Lcom/onyx/android/sdk/theme/widgets/TintLinearLayout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final o(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "binging"

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_0
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setHint(I)V

    :cond_3
    iget v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->p:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->r:Z

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->setMaxLength(Ljava/lang/Integer;Z)V

    :cond_5
    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    iget v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->o:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setInputType(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->f(Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvEditLengthDisplay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvEditLengthDisplay"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->q:Z

    const/4 v3, 0x0

    if-eqz p0, :cond_9

    move p0, v3

    goto :goto_0

    :cond_9
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/ui/R$string;->exit_length_display:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v5

    if-nez v5, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_a
    iget-object v5, v5, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getLengthDisplay()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_b
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->editText:Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/ui/MaxLengthInputTextEdit;->getMaxLengthDisplay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p1

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvEditLengthDisplay:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final p(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->l:Ljava/lang/Integer;

    const/4 v1, 0x0

    const-string v2, "binging"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_0
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->m:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->j:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_4
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvCancel:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->k:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_6
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->h:Landroid/text/Spannable;

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->h:Landroid/text/Spannable;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->n:Ljava/lang/Integer;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v3

    if-nez v3, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_a
    iget-object v3, v3, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvProgress:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_b
    iget v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->s:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_d

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_c
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvCancel:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget v4, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->s:I

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    :cond_d
    iget v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->t:I

    if-eq v0, v3, :cond_f

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p1

    if-nez p1, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    move-object v1, p1

    :goto_0
    iget-object p1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->t:I

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    :cond_f
    return-void
.end method

.method public final q(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 4

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v3, "tvTitle"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->x:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget-object v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p1

    :goto_1
    iget-object p1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget-object p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public final r(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 6

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvContent:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvContent"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->w:Z

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->clEditContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    const-string v3, "clEditContainer"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->v:Z

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    iget-object p1, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvCancel:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v0, "tvCancel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->y:Z

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final s(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 4

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "binging"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->ivWarning:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v3, "ivWarning"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->B:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->B:Z

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget v0, Lcom/onyx/android/sdk/skin/R$color;->theme_error_color_01:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v1

    :cond_4
    iget-object p0, p0, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget v0, Lcom/onyx/android/sdk/ui/R$drawable;->theme_ripple_dialog_error_stroke_bg:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setBackgroundResource(I)V

    invoke-static {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->access$getBinging$p(Lcom/onyx/android/sdk/ui/CommonDialog;)Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;

    move-result-object p0

    if-nez p0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    iget-object p0, v1, Lcom/onyx/android/sdk/ui/databinding/DialogCommonBinding;->tvConfirm:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget p1, Lcom/onyx/android/sdk/skin/R$color;->theme_error_color_01:I

    invoke-static {p1}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getColorById(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/theme/widgets/TintTextView;->setTextColor(I)V

    return-void
.end method

.method public final setCancelButtonHide(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->y:Z

    return-object p0
.end method

.method public final setCancelCallback(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/app/Dialog;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/CommonDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->c:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setCancelColor(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->s:I

    return-object p0
.end method

.method public final setCancelText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setCancelTouchOutside(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->z:Z

    return-object p0
.end method

.method public final setCancelable(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->A:Z

    return-object p0
.end method

.method public final setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/android/sdk/ui/CommonDialog;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/CommonDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->b:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final setConfirmColor(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->t:I

    return-object p0
.end method

.method public final setConfirmDismiss(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->C:Z

    return-object p0
.end method

.method public final setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setContentSpannable(Landroid/text/Spannable;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 1
    .param p1    # Landroid/text/Spannable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "spannable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->h:Landroid/text/Spannable;

    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->a:Landroid/content/Context;

    return-void
.end method

.method public final setDialogType(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->u:I

    return-object p0
.end method

.method public final setDimAmount(F)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->F:F

    return-object p0
.end method

.method public final setDismissCallback(Lkotlin/jvm/functions/Function0;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/CommonDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->d:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final setEditCharFilter(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lcom/onyx/android/sdk/ui/CommonDialog$Builder;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->E:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setEditContentHide(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->v:Z

    return-object p0
.end method

.method public final setEditHint(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setEditMaxLengthVisible(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->q:Z

    return-object p0
.end method

.method public final setEditTextContent(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final setEditTextMaxLength(IZ)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->p:I

    iput-boolean p2, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->r:Z

    return-object p0
.end method

.method public final setInputType(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->o:I

    return-object p0
.end method

.method public final setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->l:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setMessage(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final setProgressText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setTextContentHide(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->w:Z

    return-object p0
.end method

.method public final setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final setTitleColor(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setView(Landroid/view/View;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->D:Landroid/view/View;

    return-object p0
.end method

.method public final setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iput-boolean p1, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->B:Z

    return-object p0
.end method

.method public final t(Lcom/onyx/android/sdk/ui/CommonDialog;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->F:F

    invoke-virtual {p1, p0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method
