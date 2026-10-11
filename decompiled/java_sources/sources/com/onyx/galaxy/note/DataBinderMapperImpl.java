package com.onyx.galaxy.note;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.databinding.ActivityHtmlWindowBindingImpl;
import com.onyx.galaxy.note.databinding.ActivityNoteDetailBindingImpl;
import com.onyx.galaxy.note.databinding.ActivitySplashBindingImpl;
import com.onyx.galaxy.note.databinding.BackupErrorItemBindingImpl;
import com.onyx.galaxy.note.databinding.ChangeNoteTemplateTitleContainerBindingImpl;
import com.onyx.galaxy.note.databinding.CounterTimeListViewBindingImpl;
import com.onyx.galaxy.note.databinding.CreateNoteTemplateTitleContainerBindingImpl;
import com.onyx.galaxy.note.databinding.CustomScrollBarRecycleViewBindingImpl;
import com.onyx.galaxy.note.databinding.DialogAddSiblingDocTocEntryBindingImpl;
import com.onyx.galaxy.note.databinding.DialogAddToTocBindingImpl;
import com.onyx.galaxy.note.databinding.DialogAreaCodeBindingImpl;
import com.onyx.galaxy.note.databinding.DialogBackupProcessBindingImpl;
import com.onyx.galaxy.note.databinding.DialogChargeFeatureBindingImpl;
import com.onyx.galaxy.note.databinding.DialogCommonProgressBindingImpl;
import com.onyx.galaxy.note.databinding.DialogConfigNotePasswordBindingImpl;
import com.onyx.galaxy.note.databinding.DialogContentInputBindingImpl;
import com.onyx.galaxy.note.databinding.DialogConvertFileProgressBindingImpl;
import com.onyx.galaxy.note.databinding.DialogConvertToTextBindingImpl;
import com.onyx.galaxy.note.databinding.DialogCreateFolderBindingImpl;
import com.onyx.galaxy.note.databinding.DialogCreateSubFolderBindingImpl;
import com.onyx.galaxy.note.databinding.DialogCreateSubTagBindingImpl;
import com.onyx.galaxy.note.databinding.DialogCreateTagBindingImpl;
import com.onyx.galaxy.note.databinding.DialogDriveRecoveryBindingImpl;
import com.onyx.galaxy.note.databinding.DialogEditFolderBindingImpl;
import com.onyx.galaxy.note.databinding.DialogEditListNoteBindingImpl;
import com.onyx.galaxy.note.databinding.DialogEditTagBindingImpl;
import com.onyx.galaxy.note.databinding.DialogEditTagForNoteBindingImpl;
import com.onyx.galaxy.note.databinding.DialogImageCropperBindingImpl;
import com.onyx.galaxy.note.databinding.DialogImportBackupProcessBindingImpl;
import com.onyx.galaxy.note.databinding.DialogImportFileProgressBindingImpl;
import com.onyx.galaxy.note.databinding.DialogImportSuccessBindingImpl;
import com.onyx.galaxy.note.databinding.DialogInputPasswordBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLoadingBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLocalBackupBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLocalRecoveryBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLocalRestoreFileBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLoginAccountListBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLoginLoadingBindingImpl;
import com.onyx.galaxy.note.databinding.DialogLoginPolicyBindingImpl;
import com.onyx.galaxy.note.databinding.DialogMagnifierFeatureBindingImpl;
import com.onyx.galaxy.note.databinding.DialogManageFolderBindingImpl;
import com.onyx.galaxy.note.databinding.DialogManageTagBindingImpl;
import com.onyx.galaxy.note.databinding.DialogNetworkBackupBindingImpl;
import com.onyx.galaxy.note.databinding.DialogNoteAuthPasswordBindingImpl;
import com.onyx.galaxy.note.databinding.DialogNoteCountRegisterGuideBindingImpl;
import com.onyx.galaxy.note.databinding.DialogNoteExportBindingImpl;
import com.onyx.galaxy.note.databinding.DialogOcrTextConvertBindingImpl;
import com.onyx.galaxy.note.databinding.DialogPageMarginAdjustBindingImpl;
import com.onyx.galaxy.note.databinding.DialogParseNoteProgressBindingImpl;
import com.onyx.galaxy.note.databinding.DialogPolicyBindingImpl;
import com.onyx.galaxy.note.databinding.DialogProgressBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSecurityVerificationBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSelectFolderBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSelectImportFolderLocationBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSelectImportLocationBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSelectImportTagBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSelectTagBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSettingsDriveBindingImpl;
import com.onyx.galaxy.note.databinding.DialogSplashPolicyBindingImpl;
import com.onyx.galaxy.note.databinding.DialogTextFontImportBindingImpl;
import com.onyx.galaxy.note.databinding.DialogUpdateTocEntryTitleBindingImpl;
import com.onyx.galaxy.note.databinding.DialogViewImageBindingImpl;
import com.onyx.galaxy.note.databinding.DialogWechatLoginBindingImpl;
import com.onyx.galaxy.note.databinding.DragBottomLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.DragRightLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.EditorViewDragLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.EditorViewLockLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.ExportErrorItemBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentAccountCenterBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentBindEmailBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentBindPhoneBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentContainerBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentCountDownBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentCountUpBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentCounterAlarmSettingBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentCounterHistoryBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentCounterSettingHomeBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentDataRepositoryBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentDocBookmarkBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentDocExcerptBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentDocOverviewBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentDocTocBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentDraftDocOverviewBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentEditCounterSettingBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentEditMultipleCountDownBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentEditNormalCountDownBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentEmailVerifyBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentExportSpecifiedPagesBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentImageCropBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentLogOffAgreementBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentLoginBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentLogoffByEmailBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentLogoffByPhoneBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentMaterialTemplateBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentMessageCenterBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentMixedVerifyBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentMyCountDownTaskBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteDetailBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteFolderRootBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteListBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteListContainerBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteListDrawerFunctionBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteListFunctionBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteListViewPageBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteOverviewBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteSidebarBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentNoteTopContainerBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentPasswordResetBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentPhoneVerifyBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentRecentLoginBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSearchNoteBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsAiBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsCloudBackUpBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsCloudBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsDetailMainBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsDocBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsGestureBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsHelpAndFeedbackBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsLocalBackUpBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsMoreBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsPrivacyBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsStylusBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsThemeBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentSettingsToolsBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentShareResourceBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentUnbindEmailBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentUnbindPhoneBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentUserCenterBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentVerifyMethodBindingImpl;
import com.onyx.galaxy.note.databinding.FragmentWechatVerifyBindingImpl;
import com.onyx.galaxy.note.databinding.IncludeArtInkPenPopupParamsBindingImpl;
import com.onyx.galaxy.note.databinding.IncludeBallpointPenPopupParamsBindingImpl;
import com.onyx.galaxy.note.databinding.IncludeIcpContainerBindingImpl;
import com.onyx.galaxy.note.databinding.IncludeInkPenPopupParamsBindingImpl;
import com.onyx.galaxy.note.databinding.IncludePencilPopupParamsBindingImpl;
import com.onyx.galaxy.note.databinding.IncludePopupLassoContainerBindingImpl;
import com.onyx.galaxy.note.databinding.IncludeSoftPaintPenPopupParamsBindingImpl;
import com.onyx.galaxy.note.databinding.ItemAreaCodeBindingImpl;
import com.onyx.galaxy.note.databinding.ItemAudioBindingImpl;
import com.onyx.galaxy.note.databinding.ItemBackupPathBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCandidateShortcutBindingImpl;
import com.onyx.galaxy.note.databinding.ItemChargeFeatureBindingImpl;
import com.onyx.galaxy.note.databinding.ItemColorSetBindingImpl;
import com.onyx.galaxy.note.databinding.ItemContextMenuBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCountDownMultipleTimeListBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCountDownRecordBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCountUpHistoryTimeListBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCountUpPopupTimeListBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCountUpRecordBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCustomShortcutBarBindingImpl;
import com.onyx.galaxy.note.databinding.ItemCustomShortcutBarTitleBindingImpl;
import com.onyx.galaxy.note.databinding.ItemDocBookmarkBindingImpl;
import com.onyx.galaxy.note.databinding.ItemDocDraftOverviewPageBindingImpl;
import com.onyx.galaxy.note.databinding.ItemDocExcerptBindingImpl;
import com.onyx.galaxy.note.databinding.ItemDocOverviewPageBindingImpl;
import com.onyx.galaxy.note.databinding.ItemDocTocBindingImpl;
import com.onyx.galaxy.note.databinding.ItemExcerptQuoteBindingImpl;
import com.onyx.galaxy.note.databinding.ItemFeatureResourceBindingImpl;
import com.onyx.galaxy.note.databinding.ItemFeedbackPictureLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.ItemFeedbackTypeLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.ItemFontImportBindingImpl;
import com.onyx.galaxy.note.databinding.ItemFontShowBindingImpl;
import com.onyx.galaxy.note.databinding.ItemHwrResourceBindingImpl;
import com.onyx.galaxy.note.databinding.ItemImagePickerBindingImpl;
import com.onyx.galaxy.note.databinding.ItemInkFontBindingImpl;
import com.onyx.galaxy.note.databinding.ItemLassoElementBindingImpl;
import com.onyx.galaxy.note.databinding.ItemLayerBindingImpl;
import com.onyx.galaxy.note.databinding.ItemListImportFilesBindingImpl;
import com.onyx.galaxy.note.databinding.ItemMediaStoreImageBindingImpl;
import com.onyx.galaxy.note.databinding.ItemMyCountDownTaskBindingImpl;
import com.onyx.galaxy.note.databinding.ItemMyCountDownTaskTimeListBindingImpl;
import com.onyx.galaxy.note.databinding.ItemNoteOverviewBindingImpl;
import com.onyx.galaxy.note.databinding.ItemNotePageThumbnailBindingImpl;
import com.onyx.galaxy.note.databinding.ItemNoteRemovedPageThumbnailBindingImpl;
import com.onyx.galaxy.note.databinding.ItemNoteTabBindingImpl;
import com.onyx.galaxy.note.databinding.ItemNoteTabDragBindingImpl;
import com.onyx.galaxy.note.databinding.ItemNoteTabManagementBindingImpl;
import com.onyx.galaxy.note.databinding.ItemOptionSelectBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPageMarginSizeBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPageMarginTemplateBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPageMarginTemplateStyleBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPenBoxBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPenBoxPenBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPenBoxPenHorizontalBindingImpl;
import com.onyx.galaxy.note.databinding.ItemPopupPenBoxPenBindingImpl;
import com.onyx.galaxy.note.databinding.ItemScaleBindingImpl;
import com.onyx.galaxy.note.databinding.ItemSearchFilterBindingImpl;
import com.onyx.galaxy.note.databinding.ItemSelectMoveToLayerBindingImpl;
import com.onyx.galaxy.note.databinding.ItemSelectionMenuBindingImpl;
import com.onyx.galaxy.note.databinding.ItemSelectorOptionBindingImpl;
import com.onyx.galaxy.note.databinding.ItemShareResourceBindingImpl;
import com.onyx.galaxy.note.databinding.ItemShortcutBarMoreFunctionAudioBindingImpl;
import com.onyx.galaxy.note.databinding.ItemShortcutBarMoreFunctionAudioSetBindingImpl;
import com.onyx.galaxy.note.databinding.ItemShortcutBarMoreFunctionNormalBindingImpl;
import com.onyx.galaxy.note.databinding.ItemStickerBindingImpl;
import com.onyx.galaxy.note.databinding.ItemStickerImageBindingImpl;
import com.onyx.galaxy.note.databinding.ItemTapeFillStyleBindingImpl;
import com.onyx.galaxy.note.databinding.ItemTextSizeSpaceBindingImpl;
import com.onyx.galaxy.note.databinding.ItemThemeBindingImpl;
import com.onyx.galaxy.note.databinding.ItemThemeHeaderBindingImpl;
import com.onyx.galaxy.note.databinding.ItemToolbarCustomBindingImpl;
import com.onyx.galaxy.note.databinding.ItemUniversalShapeColorBindingImpl;
import com.onyx.galaxy.note.databinding.ItemUniversalShapeTypeBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyEmailBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyHuaweiBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyPasswordBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyPhoneBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutAccountVerifyWechatBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutCategoryTitleContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutColorPropertyBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutColorPropertyLargeBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutCounterHistoryEmptyBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutCounterTipsViewBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutCounterViewBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutCustomShortcutsViewBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutDocSearchBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutEmailVerifyItemBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutEraserTypeParamsContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutExcerptTypeParamsContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutFunctionToolBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutImageShapeParamsContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutInkBeautifyTypesetBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutInputTextToolBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutItemTextBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutLassoTypeParamsContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutMagnifierViewPortBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutNoteCommonSettingsBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutNoteExportSettingsBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutNotePageSettingsBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutNoteTabBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutNoteTagBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutPageIndicatorBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutPageNumFloatBarBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutPenBoxBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutPhoneVerifyItemBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutPhysicalMarkPenGroupBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutPhysicalShapeGroupBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutRulerUnitsBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutScaleIndicatorBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutScreenCaptureBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutSelectionMenuBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutSelectionMenuPagedBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutShapeParamsContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutShapeToolAutoBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutShapesLocationBarBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutStickerCategoryMainBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutStickerCategorySelectBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutStickerCategorySubBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutStickerParamsContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutStrokeAndColorBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutSwipeRecycleViewBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutTemplateTitleOrientationContainerBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutTimePickerViewBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutTitleEditTextBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutToolOperationTipBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutUserInfoBindingImpl;
import com.onyx.galaxy.note.databinding.LayoutWifiAndMobileContainerBindingImpl;
import com.onyx.galaxy.note.databinding.MagnifierEditorLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.PopupAudioActionBindingImpl;
import com.onyx.galaxy.note.databinding.PopupAudioListBindingImpl;
import com.onyx.galaxy.note.databinding.PopupBallpointPenBindingImpl;
import com.onyx.galaxy.note.databinding.PopupCalligraphyPenBindingImpl;
import com.onyx.galaxy.note.databinding.PopupContextMenuBindingImpl;
import com.onyx.galaxy.note.databinding.PopupCounterHistoryOptionsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupCounterMoreOptionsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupCounterSettingBindingImpl;
import com.onyx.galaxy.note.databinding.PopupCreateNoteBindingImpl;
import com.onyx.galaxy.note.databinding.PopupCustomCoverBindingImpl;
import com.onyx.galaxy.note.databinding.PopupDocBookmarkActionBindingImpl;
import com.onyx.galaxy.note.databinding.PopupDocExcerptActionBindingImpl;
import com.onyx.galaxy.note.databinding.PopupDocOverviewActionBindingImpl;
import com.onyx.galaxy.note.databinding.PopupDocTocActionBindingImpl;
import com.onyx.galaxy.note.databinding.PopupEraserBindingImpl;
import com.onyx.galaxy.note.databinding.PopupExcerptJumpModelListBindingImpl;
import com.onyx.galaxy.note.databinding.PopupExcerptMenuBindingImpl;
import com.onyx.galaxy.note.databinding.PopupExcerptPenMenuBindingImpl;
import com.onyx.galaxy.note.databinding.PopupFolderOpBindingImpl;
import com.onyx.galaxy.note.databinding.PopupGuideImageBindingImpl;
import com.onyx.galaxy.note.databinding.PopupGuideMixBindingImpl;
import com.onyx.galaxy.note.databinding.PopupGuideTextBindingImpl;
import com.onyx.galaxy.note.databinding.PopupImageBindingImpl;
import com.onyx.galaxy.note.databinding.PopupInkBeautifyBindingImpl;
import com.onyx.galaxy.note.databinding.PopupInkBeautifyHelpBindingImpl;
import com.onyx.galaxy.note.databinding.PopupInkFontListBindingImpl;
import com.onyx.galaxy.note.databinding.PopupInkPenBindingImpl;
import com.onyx.galaxy.note.databinding.PopupInsertPageBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLaserShapeBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLassoBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLayerBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLinkRedbookBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLinkWebsiteBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLoadingBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLongPressBindingImpl;
import com.onyx.galaxy.note.databinding.PopupLongPressPasteBindingImpl;
import com.onyx.galaxy.note.databinding.PopupMagnifierBindingImpl;
import com.onyx.galaxy.note.databinding.PopupMarginSizeBindingImpl;
import com.onyx.galaxy.note.databinding.PopupMarginStyleBindingImpl;
import com.onyx.galaxy.note.databinding.PopupMarginTemplateSpaceBindingImpl;
import com.onyx.galaxy.note.databinding.PopupMarkPenBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteAutoLockIntervalBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteDocumentMoreSettingsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteListDustBinOpBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteListMoreOperateBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteListOpBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteListSortBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteModeBindingImpl;
import com.onyx.galaxy.note.databinding.PopupNoteOverviewOptionsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPageNumFloatPanelBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPageRecycleBinBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPathOpBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPenCreateBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPenListBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPenSizeBindingImpl;
import com.onyx.galaxy.note.databinding.PopupPencilBindingImpl;
import com.onyx.galaxy.note.databinding.PopupQuotaNotEnoughBindingImpl;
import com.onyx.galaxy.note.databinding.PopupQuoteMenuBindingImpl;
import com.onyx.galaxy.note.databinding.PopupReleaseNoteBindingImpl;
import com.onyx.galaxy.note.databinding.PopupScaleCollectionBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSeekBarBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSelectFilePagesBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSelectMoveToLayerBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSelectNotePagesBindingImpl;
import com.onyx.galaxy.note.databinding.PopupShapeLinkBindingImpl;
import com.onyx.galaxy.note.databinding.PopupShapeLinkEditBindingImpl;
import com.onyx.galaxy.note.databinding.PopupShapeTagBindingImpl;
import com.onyx.galaxy.note.databinding.PopupShapeToolbarCustomBindingImpl;
import com.onyx.galaxy.note.databinding.PopupShortcutBarCustomBindingImpl;
import com.onyx.galaxy.note.databinding.PopupShortcutBarMoreFunctionsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSoftPaintPenBindingImpl;
import com.onyx.galaxy.note.databinding.PopupStickersBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSwitchNoteSettingsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupSyncErrorBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTabManagmentBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTabNoteOptionsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTagOpBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTagsListBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTapePenBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTemplateEditBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTemplateSpaceArgsBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTextFontListBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTextSizeSpaceBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTextinputSelectionMenuBindingImpl;
import com.onyx.galaxy.note.databinding.PopupThemeBindingImpl;
import com.onyx.galaxy.note.databinding.PopupTipsGuideBindingImpl;
import com.onyx.galaxy.note.databinding.PopupUniversalShapeBindingImpl;
import com.onyx.galaxy.note.databinding.PopupUpgradeImageBindingImpl;
import com.onyx.galaxy.note.databinding.PopupUpgradeMixBindingImpl;
import com.onyx.galaxy.note.databinding.PopupUpgradeTextBindingImpl;
import com.onyx.galaxy.note.databinding.PopupWebViewBindingImpl;
import com.onyx.galaxy.note.databinding.PopupWritePenGroupBindingImpl;
import com.onyx.galaxy.note.databinding.RestoreErrorItemBindingImpl;
import com.onyx.galaxy.note.databinding.SplitScreenLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.TagsLinearlayoutChildLayoutBindingImpl;
import com.onyx.galaxy.note.databinding.ViewGuideBindingImpl;
import com.onyx.galaxy.note.databinding.ViewToolBarContainerBindingImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes9.dex */
public class DataBinderMapperImpl extends DataBinderMapper {

    /* renamed from: A */
    public static final int f52985A = 27;

    /* renamed from: A0 */
    public static final int f52986A0 = 79;

    /* renamed from: A1 */
    public static final int f52987A1 = 131;

    /* renamed from: A2 */
    public static final int f52988A2 = 183;

    /* renamed from: A3 */
    public static final int f52989A3 = 235;

    /* renamed from: A4 */
    public static final int f52990A4 = 287;

    /* renamed from: A5 */
    public static final int f52991A5 = 339;

    /* renamed from: B */
    public static final int f52992B = 28;

    /* renamed from: B0 */
    public static final int f52993B0 = 80;

    /* renamed from: B1 */
    public static final int f52994B1 = 132;

    /* renamed from: B2 */
    public static final int f52995B2 = 184;

    /* renamed from: B3 */
    public static final int f52996B3 = 236;

    /* renamed from: B4 */
    public static final int f52997B4 = 288;

    /* renamed from: B5 */
    public static final int f52998B5 = 340;

    /* renamed from: C */
    public static final int f52999C = 29;

    /* renamed from: C0 */
    public static final int f53000C0 = 81;

    /* renamed from: C1 */
    public static final int f53001C1 = 133;

    /* renamed from: C2 */
    public static final int f53002C2 = 185;

    /* renamed from: C3 */
    public static final int f53003C3 = 237;

    /* renamed from: C4 */
    public static final int f53004C4 = 289;

    /* renamed from: C5 */
    public static final int f53005C5 = 341;

    /* renamed from: D */
    public static final int f53006D = 30;

    /* renamed from: D0 */
    public static final int f53007D0 = 82;

    /* renamed from: D1 */
    public static final int f53008D1 = 134;

    /* renamed from: D2 */
    public static final int f53009D2 = 186;

    /* renamed from: D3 */
    public static final int f53010D3 = 238;

    /* renamed from: D4 */
    public static final int f53011D4 = 290;

    /* renamed from: D5 */
    public static final int f53012D5 = 342;

    /* renamed from: E */
    public static final int f53013E = 31;

    /* renamed from: E0 */
    public static final int f53014E0 = 83;

    /* renamed from: E1 */
    public static final int f53015E1 = 135;

    /* renamed from: E2 */
    public static final int f53016E2 = 187;

    /* renamed from: E3 */
    public static final int f53017E3 = 239;

    /* renamed from: E4 */
    public static final int f53018E4 = 291;

    /* renamed from: E5 */
    public static final int f53019E5 = 343;

    /* renamed from: F */
    public static final int f53020F = 32;

    /* renamed from: F0 */
    public static final int f53021F0 = 84;

    /* renamed from: F1 */
    public static final int f53022F1 = 136;

    /* renamed from: F2 */
    public static final int f53023F2 = 188;

    /* renamed from: F3 */
    public static final int f53024F3 = 240;

    /* renamed from: F4 */
    public static final int f53025F4 = 292;

    /* renamed from: F5 */
    public static final int f53026F5 = 344;

    /* renamed from: G */
    public static final int f53027G = 33;

    /* renamed from: G0 */
    public static final int f53028G0 = 85;

    /* renamed from: G1 */
    public static final int f53029G1 = 137;

    /* renamed from: G2 */
    public static final int f53030G2 = 189;

    /* renamed from: G3 */
    public static final int f53031G3 = 241;

    /* renamed from: G4 */
    public static final int f53032G4 = 293;

    /* renamed from: G5 */
    public static final int f53033G5 = 345;

    /* renamed from: H */
    public static final int f53034H = 34;

    /* renamed from: H0 */
    public static final int f53035H0 = 86;

    /* renamed from: H1 */
    public static final int f53036H1 = 138;

    /* renamed from: H2 */
    public static final int f53037H2 = 190;

    /* renamed from: H3 */
    public static final int f53038H3 = 242;

    /* renamed from: H4 */
    public static final int f53039H4 = 294;

    /* renamed from: H5 */
    public static final int f53040H5 = 346;

    /* renamed from: I */
    public static final int f53041I = 35;

    /* renamed from: I0 */
    public static final int f53042I0 = 87;

    /* renamed from: I1 */
    public static final int f53043I1 = 139;

    /* renamed from: I2 */
    public static final int f53044I2 = 191;

    /* renamed from: I3 */
    public static final int f53045I3 = 243;

    /* renamed from: I4 */
    public static final int f53046I4 = 295;

    /* renamed from: I5 */
    public static final int f53047I5 = 347;

    /* renamed from: J */
    public static final int f53048J = 36;

    /* renamed from: J0 */
    public static final int f53049J0 = 88;

    /* renamed from: J1 */
    public static final int f53050J1 = 140;

    /* renamed from: J2 */
    public static final int f53051J2 = 192;

    /* renamed from: J3 */
    public static final int f53052J3 = 244;

    /* renamed from: J4 */
    public static final int f53053J4 = 296;

    /* renamed from: J5 */
    public static final int f53054J5 = 348;

    /* renamed from: K */
    public static final int f53055K = 37;

    /* renamed from: K0 */
    public static final int f53056K0 = 89;

    /* renamed from: K1 */
    public static final int f53057K1 = 141;

    /* renamed from: K2 */
    public static final int f53058K2 = 193;

    /* renamed from: K3 */
    public static final int f53059K3 = 245;

    /* renamed from: K4 */
    public static final int f53060K4 = 297;

    /* renamed from: K5 */
    public static final int f53061K5 = 349;

    /* renamed from: L */
    public static final int f53062L = 38;

    /* renamed from: L0 */
    public static final int f53063L0 = 90;

    /* renamed from: L1 */
    public static final int f53064L1 = 142;

    /* renamed from: L2 */
    public static final int f53065L2 = 194;

    /* renamed from: L3 */
    public static final int f53066L3 = 246;

    /* renamed from: L4 */
    public static final int f53067L4 = 298;

    /* renamed from: L5 */
    public static final int f53068L5 = 350;

    /* renamed from: M */
    public static final int f53069M = 39;

    /* renamed from: M0 */
    public static final int f53070M0 = 91;

    /* renamed from: M1 */
    public static final int f53071M1 = 143;

    /* renamed from: M2 */
    public static final int f53072M2 = 195;

    /* renamed from: M3 */
    public static final int f53073M3 = 247;

    /* renamed from: M4 */
    public static final int f53074M4 = 299;

    /* renamed from: M5 */
    public static final int f53075M5 = 351;

    /* renamed from: N */
    public static final int f53076N = 40;

    /* renamed from: N0 */
    public static final int f53077N0 = 92;

    /* renamed from: N1 */
    public static final int f53078N1 = 144;

    /* renamed from: N2 */
    public static final int f53079N2 = 196;

    /* renamed from: N3 */
    public static final int f53080N3 = 248;

    /* renamed from: N4 */
    public static final int f53081N4 = 300;

    /* renamed from: N5 */
    public static final int f53082N5 = 352;

    /* renamed from: O */
    public static final int f53083O = 41;

    /* renamed from: O0 */
    public static final int f53084O0 = 93;

    /* renamed from: O1 */
    public static final int f53085O1 = 145;

    /* renamed from: O2 */
    public static final int f53086O2 = 197;

    /* renamed from: O3 */
    public static final int f53087O3 = 249;

    /* renamed from: O4 */
    public static final int f53088O4 = 301;

    /* renamed from: O5 */
    public static final int f53089O5 = 353;

    /* renamed from: P */
    public static final int f53090P = 42;

    /* renamed from: P0 */
    public static final int f53091P0 = 94;

    /* renamed from: P1 */
    public static final int f53092P1 = 146;

    /* renamed from: P2 */
    public static final int f53093P2 = 198;

    /* renamed from: P3 */
    public static final int f53094P3 = 250;

    /* renamed from: P4 */
    public static final int f53095P4 = 302;

    /* renamed from: P5 */
    public static final int f53096P5 = 354;

    /* renamed from: Q */
    public static final int f53097Q = 43;

    /* renamed from: Q0 */
    public static final int f53098Q0 = 95;

    /* renamed from: Q1 */
    public static final int f53099Q1 = 147;

    /* renamed from: Q2 */
    public static final int f53100Q2 = 199;

    /* renamed from: Q3 */
    public static final int f53101Q3 = 251;

    /* renamed from: Q4 */
    public static final int f53102Q4 = 303;

    /* renamed from: Q5 */
    public static final int f53103Q5 = 355;

    /* renamed from: R */
    public static final int f53104R = 44;

    /* renamed from: R0 */
    public static final int f53105R0 = 96;

    /* renamed from: R1 */
    public static final int f53106R1 = 148;

    /* renamed from: R2 */
    public static final int f53107R2 = 200;

    /* renamed from: R3 */
    public static final int f53108R3 = 252;

    /* renamed from: R4 */
    public static final int f53109R4 = 304;

    /* renamed from: R5 */
    public static final SparseIntArray f53110R5;

    /* renamed from: S */
    public static final int f53111S = 45;

    /* renamed from: S0 */
    public static final int f53112S0 = 97;

    /* renamed from: S1 */
    public static final int f53113S1 = 149;

    /* renamed from: S2 */
    public static final int f53114S2 = 201;

    /* renamed from: S3 */
    public static final int f53115S3 = 253;

    /* renamed from: S4 */
    public static final int f53116S4 = 305;

    /* renamed from: T */
    public static final int f53117T = 46;

    /* renamed from: T0 */
    public static final int f53118T0 = 98;

    /* renamed from: T1 */
    public static final int f53119T1 = 150;

    /* renamed from: T2 */
    public static final int f53120T2 = 202;

    /* renamed from: T3 */
    public static final int f53121T3 = 254;

    /* renamed from: T4 */
    public static final int f53122T4 = 306;

    /* renamed from: U */
    public static final int f53123U = 47;

    /* renamed from: U0 */
    public static final int f53124U0 = 99;

    /* renamed from: U1 */
    public static final int f53125U1 = 151;

    /* renamed from: U2 */
    public static final int f53126U2 = 203;

    /* renamed from: U3 */
    public static final int f53127U3 = 255;

    /* renamed from: U4 */
    public static final int f53128U4 = 307;

    /* renamed from: V */
    public static final int f53129V = 48;

    /* renamed from: V0 */
    public static final int f53130V0 = 100;

    /* renamed from: V1 */
    public static final int f53131V1 = 152;

    /* renamed from: V2 */
    public static final int f53132V2 = 204;

    /* renamed from: V3 */
    public static final int f53133V3 = 256;

    /* renamed from: V4 */
    public static final int f53134V4 = 308;

    /* renamed from: W */
    public static final int f53135W = 49;

    /* renamed from: W0 */
    public static final int f53136W0 = 101;

    /* renamed from: W1 */
    public static final int f53137W1 = 153;

    /* renamed from: W2 */
    public static final int f53138W2 = 205;

    /* renamed from: W3 */
    public static final int f53139W3 = 257;

    /* renamed from: W4 */
    public static final int f53140W4 = 309;

    /* renamed from: X */
    public static final int f53141X = 50;

    /* renamed from: X0 */
    public static final int f53142X0 = 102;

    /* renamed from: X1 */
    public static final int f53143X1 = 154;

    /* renamed from: X2 */
    public static final int f53144X2 = 206;

    /* renamed from: X3 */
    public static final int f53145X3 = 258;

    /* renamed from: X4 */
    public static final int f53146X4 = 310;

    /* renamed from: Y */
    public static final int f53147Y = 51;

    /* renamed from: Y0 */
    public static final int f53148Y0 = 103;

    /* renamed from: Y1 */
    public static final int f53149Y1 = 155;

    /* renamed from: Y2 */
    public static final int f53150Y2 = 207;

    /* renamed from: Y3 */
    public static final int f53151Y3 = 259;

    /* renamed from: Y4 */
    public static final int f53152Y4 = 311;

    /* renamed from: Z */
    public static final int f53153Z = 52;

    /* renamed from: Z0 */
    public static final int f53154Z0 = 104;

    /* renamed from: Z1 */
    public static final int f53155Z1 = 156;

    /* renamed from: Z2 */
    public static final int f53156Z2 = 208;

    /* renamed from: Z3 */
    public static final int f53157Z3 = 260;

    /* renamed from: Z4 */
    public static final int f53158Z4 = 312;

    /* renamed from: a */
    public static final int f53159a = 1;

    /* renamed from: a0 */
    public static final int f53160a0 = 53;

    /* renamed from: a1 */
    public static final int f53161a1 = 105;

    /* renamed from: a2 */
    public static final int f53162a2 = 157;

    /* renamed from: a3 */
    public static final int f53163a3 = 209;

    /* renamed from: a4 */
    public static final int f53164a4 = 261;

    /* renamed from: a5 */
    public static final int f53165a5 = 313;

    /* renamed from: b */
    public static final int f53166b = 2;

    /* renamed from: b0 */
    public static final int f53167b0 = 54;

    /* renamed from: b1 */
    public static final int f53168b1 = 106;

    /* renamed from: b2 */
    public static final int f53169b2 = 158;

    /* renamed from: b3 */
    public static final int f53170b3 = 210;

    /* renamed from: b4 */
    public static final int f53171b4 = 262;

    /* renamed from: b5 */
    public static final int f53172b5 = 314;

    /* renamed from: c */
    public static final int f53173c = 3;

    /* renamed from: c0 */
    public static final int f53174c0 = 55;

    /* renamed from: c1 */
    public static final int f53175c1 = 107;

    /* renamed from: c2 */
    public static final int f53176c2 = 159;

    /* renamed from: c3 */
    public static final int f53177c3 = 211;

    /* renamed from: c4 */
    public static final int f53178c4 = 263;

    /* renamed from: c5 */
    public static final int f53179c5 = 315;

    /* renamed from: d */
    public static final int f53180d = 4;

    /* renamed from: d0 */
    public static final int f53181d0 = 56;

    /* renamed from: d1 */
    public static final int f53182d1 = 108;

    /* renamed from: d2 */
    public static final int f53183d2 = 160;

    /* renamed from: d3 */
    public static final int f53184d3 = 212;

    /* renamed from: d4 */
    public static final int f53185d4 = 264;

    /* renamed from: d5 */
    public static final int f53186d5 = 316;

    /* renamed from: e */
    public static final int f53187e = 5;

    /* renamed from: e0 */
    public static final int f53188e0 = 57;

    /* renamed from: e1 */
    public static final int f53189e1 = 109;

    /* renamed from: e2 */
    public static final int f53190e2 = 161;

    /* renamed from: e3 */
    public static final int f53191e3 = 213;

    /* renamed from: e4 */
    public static final int f53192e4 = 265;

    /* renamed from: e5 */
    public static final int f53193e5 = 317;

    /* renamed from: f */
    public static final int f53194f = 6;

    /* renamed from: f0 */
    public static final int f53195f0 = 58;

    /* renamed from: f1 */
    public static final int f53196f1 = 110;

    /* renamed from: f2 */
    public static final int f53197f2 = 162;

    /* renamed from: f3 */
    public static final int f53198f3 = 214;

    /* renamed from: f4 */
    public static final int f53199f4 = 266;

    /* renamed from: f5 */
    public static final int f53200f5 = 318;

    /* renamed from: g */
    public static final int f53201g = 7;

    /* renamed from: g0 */
    public static final int f53202g0 = 59;

    /* renamed from: g1 */
    public static final int f53203g1 = 111;

    /* renamed from: g2 */
    public static final int f53204g2 = 163;

    /* renamed from: g3 */
    public static final int f53205g3 = 215;

    /* renamed from: g4 */
    public static final int f53206g4 = 267;

    /* renamed from: g5 */
    public static final int f53207g5 = 319;

    /* renamed from: h */
    public static final int f53208h = 8;

    /* renamed from: h0 */
    public static final int f53209h0 = 60;

    /* renamed from: h1 */
    public static final int f53210h1 = 112;

    /* renamed from: h2 */
    public static final int f53211h2 = 164;

    /* renamed from: h3 */
    public static final int f53212h3 = 216;

    /* renamed from: h4 */
    public static final int f53213h4 = 268;

    /* renamed from: h5 */
    public static final int f53214h5 = 320;

    /* renamed from: i */
    public static final int f53215i = 9;

    /* renamed from: i0 */
    public static final int f53216i0 = 61;

    /* renamed from: i1 */
    public static final int f53217i1 = 113;

    /* renamed from: i2 */
    public static final int f53218i2 = 165;

    /* renamed from: i3 */
    public static final int f53219i3 = 217;

    /* renamed from: i4 */
    public static final int f53220i4 = 269;

    /* renamed from: i5 */
    public static final int f53221i5 = 321;

    /* renamed from: j */
    public static final int f53222j = 10;

    /* renamed from: j0 */
    public static final int f53223j0 = 62;

    /* renamed from: j1 */
    public static final int f53224j1 = 114;

    /* renamed from: j2 */
    public static final int f53225j2 = 166;

    /* renamed from: j3 */
    public static final int f53226j3 = 218;

    /* renamed from: j4 */
    public static final int f53227j4 = 270;

    /* renamed from: j5 */
    public static final int f53228j5 = 322;

    /* renamed from: k */
    public static final int f53229k = 11;

    /* renamed from: k0 */
    public static final int f53230k0 = 63;

    /* renamed from: k1 */
    public static final int f53231k1 = 115;

    /* renamed from: k2 */
    public static final int f53232k2 = 167;

    /* renamed from: k3 */
    public static final int f53233k3 = 219;

    /* renamed from: k4 */
    public static final int f53234k4 = 271;

    /* renamed from: k5 */
    public static final int f53235k5 = 323;

    /* renamed from: l */
    public static final int f53236l = 12;

    /* renamed from: l0 */
    public static final int f53237l0 = 64;

    /* renamed from: l1 */
    public static final int f53238l1 = 116;

    /* renamed from: l2 */
    public static final int f53239l2 = 168;

    /* renamed from: l3 */
    public static final int f53240l3 = 220;

    /* renamed from: l4 */
    public static final int f53241l4 = 272;

    /* renamed from: l5 */
    public static final int f53242l5 = 324;

    /* renamed from: m */
    public static final int f53243m = 13;

    /* renamed from: m0 */
    public static final int f53244m0 = 65;

    /* renamed from: m1 */
    public static final int f53245m1 = 117;

    /* renamed from: m2 */
    public static final int f53246m2 = 169;

    /* renamed from: m3 */
    public static final int f53247m3 = 221;

    /* renamed from: m4 */
    public static final int f53248m4 = 273;

    /* renamed from: m5 */
    public static final int f53249m5 = 325;

    /* renamed from: n */
    public static final int f53250n = 14;

    /* renamed from: n0 */
    public static final int f53251n0 = 66;

    /* renamed from: n1 */
    public static final int f53252n1 = 118;

    /* renamed from: n2 */
    public static final int f53253n2 = 170;

    /* renamed from: n3 */
    public static final int f53254n3 = 222;

    /* renamed from: n4 */
    public static final int f53255n4 = 274;

    /* renamed from: n5 */
    public static final int f53256n5 = 326;

    /* renamed from: o */
    public static final int f53257o = 15;

    /* renamed from: o0 */
    public static final int f53258o0 = 67;

    /* renamed from: o1 */
    public static final int f53259o1 = 119;

    /* renamed from: o2 */
    public static final int f53260o2 = 171;

    /* renamed from: o3 */
    public static final int f53261o3 = 223;

    /* renamed from: o4 */
    public static final int f53262o4 = 275;

    /* renamed from: o5 */
    public static final int f53263o5 = 327;

    /* renamed from: p */
    public static final int f53264p = 16;

    /* renamed from: p0 */
    public static final int f53265p0 = 68;

    /* renamed from: p1 */
    public static final int f53266p1 = 120;

    /* renamed from: p2 */
    public static final int f53267p2 = 172;

    /* renamed from: p3 */
    public static final int f53268p3 = 224;

    /* renamed from: p4 */
    public static final int f53269p4 = 276;

    /* renamed from: p5 */
    public static final int f53270p5 = 328;

    /* renamed from: q */
    public static final int f53271q = 17;

    /* renamed from: q0 */
    public static final int f53272q0 = 69;

    /* renamed from: q1 */
    public static final int f53273q1 = 121;

    /* renamed from: q2 */
    public static final int f53274q2 = 173;

    /* renamed from: q3 */
    public static final int f53275q3 = 225;

    /* renamed from: q4 */
    public static final int f53276q4 = 277;

    /* renamed from: q5 */
    public static final int f53277q5 = 329;

    /* renamed from: r */
    public static final int f53278r = 18;

    /* renamed from: r0 */
    public static final int f53279r0 = 70;

    /* renamed from: r1 */
    public static final int f53280r1 = 122;

    /* renamed from: r2 */
    public static final int f53281r2 = 174;

    /* renamed from: r3 */
    public static final int f53282r3 = 226;

    /* renamed from: r4 */
    public static final int f53283r4 = 278;

    /* renamed from: r5 */
    public static final int f53284r5 = 330;

    /* renamed from: s */
    public static final int f53285s = 19;

    /* renamed from: s0 */
    public static final int f53286s0 = 71;

    /* renamed from: s1 */
    public static final int f53287s1 = 123;

    /* renamed from: s2 */
    public static final int f53288s2 = 175;

    /* renamed from: s3 */
    public static final int f53289s3 = 227;

    /* renamed from: s4 */
    public static final int f53290s4 = 279;

    /* renamed from: s5 */
    public static final int f53291s5 = 331;

    /* renamed from: t */
    public static final int f53292t = 20;

    /* renamed from: t0 */
    public static final int f53293t0 = 72;

    /* renamed from: t1 */
    public static final int f53294t1 = 124;

    /* renamed from: t2 */
    public static final int f53295t2 = 176;

    /* renamed from: t3 */
    public static final int f53296t3 = 228;

    /* renamed from: t4 */
    public static final int f53297t4 = 280;

    /* renamed from: t5 */
    public static final int f53298t5 = 332;

    /* renamed from: u */
    public static final int f53299u = 21;

    /* renamed from: u0 */
    public static final int f53300u0 = 73;

    /* renamed from: u1 */
    public static final int f53301u1 = 125;

    /* renamed from: u2 */
    public static final int f53302u2 = 177;

    /* renamed from: u3 */
    public static final int f53303u3 = 229;

    /* renamed from: u4 */
    public static final int f53304u4 = 281;

    /* renamed from: u5 */
    public static final int f53305u5 = 333;

    /* renamed from: v */
    public static final int f53306v = 22;

    /* renamed from: v0 */
    public static final int f53307v0 = 74;

    /* renamed from: v1 */
    public static final int f53308v1 = 126;

    /* renamed from: v2 */
    public static final int f53309v2 = 178;

    /* renamed from: v3 */
    public static final int f53310v3 = 230;

    /* renamed from: v4 */
    public static final int f53311v4 = 282;

    /* renamed from: v5 */
    public static final int f53312v5 = 334;

    /* renamed from: w */
    public static final int f53313w = 23;

    /* renamed from: w0 */
    public static final int f53314w0 = 75;

    /* renamed from: w1 */
    public static final int f53315w1 = 127;

    /* renamed from: w2 */
    public static final int f53316w2 = 179;

    /* renamed from: w3 */
    public static final int f53317w3 = 231;

    /* renamed from: w4 */
    public static final int f53318w4 = 283;

    /* renamed from: w5 */
    public static final int f53319w5 = 335;

    /* renamed from: x */
    public static final int f53320x = 24;

    /* renamed from: x0 */
    public static final int f53321x0 = 76;

    /* renamed from: x1 */
    public static final int f53322x1 = 128;

    /* renamed from: x2 */
    public static final int f53323x2 = 180;

    /* renamed from: x3 */
    public static final int f53324x3 = 232;

    /* renamed from: x4 */
    public static final int f53325x4 = 284;

    /* renamed from: x5 */
    public static final int f53326x5 = 336;

    /* renamed from: y */
    public static final int f53327y = 25;

    /* renamed from: y0 */
    public static final int f53328y0 = 77;

    /* renamed from: y1 */
    public static final int f53329y1 = 129;

    /* renamed from: y2 */
    public static final int f53330y2 = 181;

    /* renamed from: y3 */
    public static final int f53331y3 = 233;

    /* renamed from: y4 */
    public static final int f53332y4 = 285;

    /* renamed from: y5 */
    public static final int f53333y5 = 337;

    /* renamed from: z */
    public static final int f53334z = 26;

    /* renamed from: z0 */
    public static final int f53335z0 = 78;

    /* renamed from: z1 */
    public static final int f53336z1 = 130;

    /* renamed from: z2 */
    public static final int f53337z2 = 182;

    /* renamed from: z3 */
    public static final int f53338z3 = 234;

    /* renamed from: z4 */
    public static final int f53339z4 = 286;

    /* renamed from: z5 */
    public static final int f53340z5 = 338;

    /* renamed from: com.onyx.galaxy.note.DataBinderMapperImpl$a */
    /* loaded from: classes9.dex */
    public static class C10632a {

        /* renamed from: a */
        public static final SparseArray<String> f53341a;

        static {
            SparseArray<String> sparseArray = new SparseArray<>(18);
            f53341a = sparseArray;
            sparseArray.put(0, "_all");
            sparseArray.put(1, "audioViewModel");
            sparseArray.put(2, "commandDataInfo");
            sparseArray.put(3, "emailViewModel");
            sparseArray.put(4, "huaweiViewModel");
            sparseArray.put(5, "isAdaptiveMode");
            sparseArray.put(6, "isWifiOnly");
            sparseArray.put(7, "model");
            sparseArray.put(8, "noteViewModel");
            sparseArray.put(9, "passwordViewModel");
            sparseArray.put(10, "phoneViewModel");
            sparseArray.put(11, "quotaModel");
            sparseArray.put(12, "resizeIconRes");
            sparseArray.put(13, "searchViewModel");
            sparseArray.put(14, "verifyCodeViewModel");
            sparseArray.put(15, "verifyViewModel");
            sparseArray.put(16, "viewModel");
            sparseArray.put(17, "wechatViewModel");
        }
    }

    /* renamed from: com.onyx.galaxy.note.DataBinderMapperImpl$b */
    /* loaded from: classes9.dex */
    public static class C10633b {

        /* renamed from: a */
        public static final HashMap<String, Integer> f53342a;

        static {
            HashMap<String, Integer> hashMap = new HashMap<>(DataBinderMapperImpl.f53103Q5);
            f53342a = hashMap;
            hashMap.put("layout/activity_html_window_0", Integer.valueOf(C10651R.layout.activity_html_window));
            hashMap.put("layout/activity_note_detail_0", Integer.valueOf(C10651R.layout.activity_note_detail));
            hashMap.put("layout/activity_splash_0", Integer.valueOf(C10651R.layout.activity_splash));
            hashMap.put("layout/backup_error_item_0", Integer.valueOf(C10651R.layout.backup_error_item));
            hashMap.put("layout/change_note_template_title_container_0", Integer.valueOf(C10651R.layout.change_note_template_title_container));
            hashMap.put("layout/counter_time_list_view_0", Integer.valueOf(C10651R.layout.counter_time_list_view));
            hashMap.put("layout/create_note_template_title_container_0", Integer.valueOf(C10651R.layout.create_note_template_title_container));
            hashMap.put("layout/custom_scroll_bar_recycle_view_0", Integer.valueOf(C10651R.layout.custom_scroll_bar_recycle_view));
            hashMap.put("layout/dialog_add_sibling_doc_toc_entry_0", Integer.valueOf(C10651R.layout.dialog_add_sibling_doc_toc_entry));
            hashMap.put("layout/dialog_add_to_toc_0", Integer.valueOf(C10651R.layout.dialog_add_to_toc));
            hashMap.put("layout/dialog_area_code_0", Integer.valueOf(C10651R.layout.dialog_area_code));
            hashMap.put("layout/dialog_backup_process_0", Integer.valueOf(C10651R.layout.dialog_backup_process));
            hashMap.put("layout/dialog_charge_feature_0", Integer.valueOf(C10651R.layout.dialog_charge_feature));
            hashMap.put("layout/dialog_common_progress_0", Integer.valueOf(C10651R.layout.dialog_common_progress));
            hashMap.put("layout/dialog_config_note_password_0", Integer.valueOf(C10651R.layout.dialog_config_note_password));
            hashMap.put("layout/dialog_content_input_0", Integer.valueOf(C10651R.layout.dialog_content_input));
            hashMap.put("layout/dialog_convert_file_progress_0", Integer.valueOf(C10651R.layout.dialog_convert_file_progress));
            hashMap.put("layout/dialog_convert_to_text_0", Integer.valueOf(C10651R.layout.dialog_convert_to_text));
            hashMap.put("layout/dialog_create_folder_0", Integer.valueOf(C10651R.layout.dialog_create_folder));
            hashMap.put("layout/dialog_create_sub_folder_0", Integer.valueOf(C10651R.layout.dialog_create_sub_folder));
            hashMap.put("layout/dialog_create_sub_tag_0", Integer.valueOf(C10651R.layout.dialog_create_sub_tag));
            hashMap.put("layout/dialog_create_tag_0", Integer.valueOf(C10651R.layout.dialog_create_tag));
            hashMap.put("layout/dialog_drive_recovery_0", Integer.valueOf(C10651R.layout.dialog_drive_recovery));
            hashMap.put("layout/dialog_edit_folder_0", Integer.valueOf(C10651R.layout.dialog_edit_folder));
            hashMap.put("layout/dialog_edit_list_note_0", Integer.valueOf(C10651R.layout.dialog_edit_list_note));
            hashMap.put("layout/dialog_edit_tag_0", Integer.valueOf(C10651R.layout.dialog_edit_tag));
            hashMap.put("layout/dialog_edit_tag_for_note_0", Integer.valueOf(C10651R.layout.dialog_edit_tag_for_note));
            hashMap.put("layout/dialog_image_cropper_0", Integer.valueOf(C10651R.layout.dialog_image_cropper));
            hashMap.put("layout/dialog_import_backup_process_0", Integer.valueOf(C10651R.layout.dialog_import_backup_process));
            hashMap.put("layout/dialog_import_file_progress_0", Integer.valueOf(C10651R.layout.dialog_import_file_progress));
            hashMap.put("layout/dialog_import_success_0", Integer.valueOf(C10651R.layout.dialog_import_success));
            hashMap.put("layout/dialog_input_password_0", Integer.valueOf(C10651R.layout.dialog_input_password));
            hashMap.put("layout/dialog_loading_0", Integer.valueOf(C10651R.layout.dialog_loading));
            hashMap.put("layout/dialog_local_backup_0", Integer.valueOf(C10651R.layout.dialog_local_backup));
            hashMap.put("layout/dialog_local_recovery_0", Integer.valueOf(C10651R.layout.dialog_local_recovery));
            hashMap.put("layout/dialog_local_restore_file_0", Integer.valueOf(C10651R.layout.dialog_local_restore_file));
            hashMap.put("layout/dialog_login_account_list_0", Integer.valueOf(C10651R.layout.dialog_login_account_list));
            hashMap.put("layout/dialog_login_loading_0", Integer.valueOf(C10651R.layout.dialog_login_loading));
            hashMap.put("layout/dialog_login_policy_0", Integer.valueOf(C10651R.layout.dialog_login_policy));
            hashMap.put("layout/dialog_magnifier_feature_0", Integer.valueOf(C10651R.layout.dialog_magnifier_feature));
            hashMap.put("layout/dialog_manage_folder_0", Integer.valueOf(C10651R.layout.dialog_manage_folder));
            hashMap.put("layout/dialog_manage_tag_0", Integer.valueOf(C10651R.layout.dialog_manage_tag));
            hashMap.put("layout/dialog_network_backup_0", Integer.valueOf(C10651R.layout.dialog_network_backup));
            hashMap.put("layout/dialog_note_auth_password_0", Integer.valueOf(C10651R.layout.dialog_note_auth_password));
            hashMap.put("layout/dialog_note_count_register_guide_0", Integer.valueOf(C10651R.layout.dialog_note_count_register_guide));
            hashMap.put("layout/dialog_note_export_0", Integer.valueOf(C10651R.layout.dialog_note_export));
            hashMap.put("layout/dialog_ocr_text_convert_0", Integer.valueOf(C10651R.layout.dialog_ocr_text_convert));
            hashMap.put("layout/dialog_page_margin_adjust_0", Integer.valueOf(C10651R.layout.dialog_page_margin_adjust));
            hashMap.put("layout/dialog_parse_note_progress_0", Integer.valueOf(C10651R.layout.dialog_parse_note_progress));
            hashMap.put("layout/dialog_policy_0", Integer.valueOf(C10651R.layout.dialog_policy));
            hashMap.put("layout/dialog_progress_0", Integer.valueOf(C10651R.layout.dialog_progress));
            hashMap.put("layout/dialog_security_verification_0", Integer.valueOf(C10651R.layout.dialog_security_verification));
            hashMap.put("layout/dialog_select_folder_0", Integer.valueOf(C10651R.layout.dialog_select_folder));
            hashMap.put("layout/dialog_select_import_folder_location_0", Integer.valueOf(C10651R.layout.dialog_select_import_folder_location));
            hashMap.put("layout/dialog_select_import_location_0", Integer.valueOf(C10651R.layout.dialog_select_import_location));
            hashMap.put("layout/dialog_select_import_tag_0", Integer.valueOf(C10651R.layout.dialog_select_import_tag));
            hashMap.put("layout/dialog_select_tag_0", Integer.valueOf(C10651R.layout.dialog_select_tag));
            hashMap.put("layout/dialog_settings_drive_0", Integer.valueOf(C10651R.layout.dialog_settings_drive));
            hashMap.put("layout/dialog_splash_policy_0", Integer.valueOf(C10651R.layout.dialog_splash_policy));
            hashMap.put("layout/dialog_text_font_import_0", Integer.valueOf(C10651R.layout.dialog_text_font_import));
            hashMap.put("layout/dialog_update_toc_entry_title_0", Integer.valueOf(C10651R.layout.dialog_update_toc_entry_title));
            hashMap.put("layout/dialog_view_image_0", Integer.valueOf(C10651R.layout.dialog_view_image));
            hashMap.put("layout/dialog_wechat_login_0", Integer.valueOf(C10651R.layout.dialog_wechat_login));
            hashMap.put("layout/drag_bottom_layout_0", Integer.valueOf(C10651R.layout.drag_bottom_layout));
            hashMap.put("layout/drag_right_layout_0", Integer.valueOf(C10651R.layout.drag_right_layout));
            hashMap.put("layout/editor_view_drag_layout_0", Integer.valueOf(C10651R.layout.editor_view_drag_layout));
            hashMap.put("layout/editor_view_lock_layout_0", Integer.valueOf(C10651R.layout.editor_view_lock_layout));
            hashMap.put("layout/export_error_item_0", Integer.valueOf(C10651R.layout.export_error_item));
            hashMap.put("layout/fragment_account_center_0", Integer.valueOf(C10651R.layout.fragment_account_center));
            hashMap.put("layout/fragment_bind_email_0", Integer.valueOf(C10651R.layout.fragment_bind_email));
            hashMap.put("layout/fragment_bind_phone_0", Integer.valueOf(C10651R.layout.fragment_bind_phone));
            hashMap.put("layout/fragment_container_0", Integer.valueOf(C10651R.layout.fragment_container));
            hashMap.put("layout/fragment_count_down_0", Integer.valueOf(C10651R.layout.fragment_count_down));
            hashMap.put("layout/fragment_count_up_0", Integer.valueOf(C10651R.layout.fragment_count_up));
            hashMap.put("layout/fragment_counter_alarm_setting_0", Integer.valueOf(C10651R.layout.fragment_counter_alarm_setting));
            hashMap.put("layout/fragment_counter_history_0", Integer.valueOf(C10651R.layout.fragment_counter_history));
            hashMap.put("layout/fragment_counter_setting_home_0", Integer.valueOf(C10651R.layout.fragment_counter_setting_home));
            hashMap.put("layout/fragment_data_repository_0", Integer.valueOf(C10651R.layout.fragment_data_repository));
            hashMap.put("layout/fragment_doc_bookmark_0", Integer.valueOf(C10651R.layout.fragment_doc_bookmark));
            hashMap.put("layout/fragment_doc_excerpt_0", Integer.valueOf(C10651R.layout.fragment_doc_excerpt));
            hashMap.put("layout/fragment_doc_overview_0", Integer.valueOf(C10651R.layout.fragment_doc_overview));
            hashMap.put("layout/fragment_doc_toc_0", Integer.valueOf(C10651R.layout.fragment_doc_toc));
            hashMap.put("layout/fragment_draft_doc_overview_0", Integer.valueOf(C10651R.layout.fragment_draft_doc_overview));
            hashMap.put("layout/fragment_edit_counter_setting_0", Integer.valueOf(C10651R.layout.fragment_edit_counter_setting));
            hashMap.put("layout/fragment_edit_multiple_count_down_0", Integer.valueOf(C10651R.layout.fragment_edit_multiple_count_down));
            hashMap.put("layout/fragment_edit_normal_count_down_0", Integer.valueOf(C10651R.layout.fragment_edit_normal_count_down));
            hashMap.put("layout/fragment_email_verify_0", Integer.valueOf(C10651R.layout.fragment_email_verify));
            hashMap.put("layout/fragment_export_specified_pages_0", Integer.valueOf(C10651R.layout.fragment_export_specified_pages));
            hashMap.put("layout/fragment_image_crop_0", Integer.valueOf(C10651R.layout.fragment_image_crop));
            hashMap.put("layout/fragment_log_off_agreement_0", Integer.valueOf(C10651R.layout.fragment_log_off_agreement));
            hashMap.put("layout/fragment_login_0", Integer.valueOf(C10651R.layout.fragment_login));
            hashMap.put("layout/fragment_logoff_by_email_0", Integer.valueOf(C10651R.layout.fragment_logoff_by_email));
            hashMap.put("layout/fragment_logoff_by_phone_0", Integer.valueOf(C10651R.layout.fragment_logoff_by_phone));
            hashMap.put("layout/fragment_material_template_0", Integer.valueOf(C10651R.layout.fragment_material_template));
            hashMap.put("layout/fragment_message_center_0", Integer.valueOf(C10651R.layout.fragment_message_center));
            hashMap.put("layout/fragment_mixed_verify_0", Integer.valueOf(C10651R.layout.fragment_mixed_verify));
            hashMap.put("layout/fragment_my_count_down_task_0", Integer.valueOf(C10651R.layout.fragment_my_count_down_task));
            hashMap.put("layout/fragment_note_detail_0", Integer.valueOf(C10651R.layout.fragment_note_detail));
            hashMap.put("layout/fragment_note_folder_root_0", Integer.valueOf(C10651R.layout.fragment_note_folder_root));
            hashMap.put("layout/fragment_note_list_0", Integer.valueOf(C10651R.layout.fragment_note_list));
            hashMap.put("layout/fragment_note_list_container_0", Integer.valueOf(C10651R.layout.fragment_note_list_container));
            hashMap.put("layout/fragment_note_list_drawer_function_0", Integer.valueOf(C10651R.layout.fragment_note_list_drawer_function));
            hashMap.put("layout/fragment_note_list_function_0", Integer.valueOf(C10651R.layout.fragment_note_list_function));
            hashMap.put("layout/fragment_note_list_view_page_0", Integer.valueOf(C10651R.layout.fragment_note_list_view_page));
            hashMap.put("layout/fragment_note_overview_0", Integer.valueOf(C10651R.layout.fragment_note_overview));
            hashMap.put("layout/fragment_note_sidebar_0", Integer.valueOf(C10651R.layout.fragment_note_sidebar));
            hashMap.put("layout/fragment_note_top_container_0", Integer.valueOf(C10651R.layout.fragment_note_top_container));
            hashMap.put("layout/fragment_password_reset_0", Integer.valueOf(C10651R.layout.fragment_password_reset));
            hashMap.put("layout/fragment_phone_verify_0", Integer.valueOf(C10651R.layout.fragment_phone_verify));
            hashMap.put("layout/fragment_recent_login_0", Integer.valueOf(C10651R.layout.fragment_recent_login));
            hashMap.put("layout/fragment_search_note_0", Integer.valueOf(C10651R.layout.fragment_search_note));
            hashMap.put("layout/fragment_settings_ai_0", Integer.valueOf(C10651R.layout.fragment_settings_ai));
            hashMap.put("layout/fragment_settings_cloud_0", Integer.valueOf(C10651R.layout.fragment_settings_cloud));
            hashMap.put("layout/fragment_settings_cloud_back_up_0", Integer.valueOf(C10651R.layout.fragment_settings_cloud_back_up));
            hashMap.put("layout/fragment_settings_detail_main_0", Integer.valueOf(C10651R.layout.fragment_settings_detail_main));
            hashMap.put("layout/fragment_settings_doc_0", Integer.valueOf(C10651R.layout.fragment_settings_doc));
            hashMap.put("layout/fragment_settings_gesture_0", Integer.valueOf(C10651R.layout.fragment_settings_gesture));
            hashMap.put("layout/fragment_settings_help_and_feedback_0", Integer.valueOf(C10651R.layout.fragment_settings_help_and_feedback));
            hashMap.put("layout/fragment_settings_local_back_up_0", Integer.valueOf(C10651R.layout.fragment_settings_local_back_up));
            hashMap.put("layout/fragment_settings_more_0", Integer.valueOf(C10651R.layout.fragment_settings_more));
            hashMap.put("layout/fragment_settings_privacy_0", Integer.valueOf(C10651R.layout.fragment_settings_privacy));
            hashMap.put("layout/fragment_settings_stylus_0", Integer.valueOf(C10651R.layout.fragment_settings_stylus));
            hashMap.put("layout/fragment_settings_theme_0", Integer.valueOf(C10651R.layout.fragment_settings_theme));
            hashMap.put("layout/fragment_settings_tools_0", Integer.valueOf(C10651R.layout.fragment_settings_tools));
            hashMap.put("layout/fragment_share_resource_0", Integer.valueOf(C10651R.layout.fragment_share_resource));
            hashMap.put("layout/fragment_unbind_email_0", Integer.valueOf(C10651R.layout.fragment_unbind_email));
            hashMap.put("layout/fragment_unbind_phone_0", Integer.valueOf(C10651R.layout.fragment_unbind_phone));
            hashMap.put("layout/fragment_user_center_0", Integer.valueOf(C10651R.layout.fragment_user_center));
            hashMap.put("layout/fragment_verify_method_0", Integer.valueOf(C10651R.layout.fragment_verify_method));
            hashMap.put("layout/fragment_wechat_verify_0", Integer.valueOf(C10651R.layout.fragment_wechat_verify));
            hashMap.put("layout/include_art_ink_pen_popup_params_0", Integer.valueOf(C10651R.layout.include_art_ink_pen_popup_params));
            hashMap.put("layout/include_ballpoint_pen_popup_params_0", Integer.valueOf(C10651R.layout.include_ballpoint_pen_popup_params));
            hashMap.put("layout/include_icp_container_0", Integer.valueOf(C10651R.layout.include_icp_container));
            hashMap.put("layout/include_ink_pen_popup_params_0", Integer.valueOf(C10651R.layout.include_ink_pen_popup_params));
            hashMap.put("layout/include_pencil_popup_params_0", Integer.valueOf(C10651R.layout.include_pencil_popup_params));
            hashMap.put("layout/include_popup_lasso_container_0", Integer.valueOf(C10651R.layout.include_popup_lasso_container));
            hashMap.put("layout/include_soft_paint_pen_popup_params_0", Integer.valueOf(C10651R.layout.include_soft_paint_pen_popup_params));
            hashMap.put("layout/item_area_code_0", Integer.valueOf(C10651R.layout.item_area_code));
            hashMap.put("layout/item_audio_0", Integer.valueOf(C10651R.layout.item_audio));
            hashMap.put("layout/item_backup_path_0", Integer.valueOf(C10651R.layout.item_backup_path));
            hashMap.put("layout/item_candidate_shortcut_0", Integer.valueOf(C10651R.layout.item_candidate_shortcut));
            hashMap.put("layout/item_charge_feature_0", Integer.valueOf(C10651R.layout.item_charge_feature));
            hashMap.put("layout/item_color_set_0", Integer.valueOf(C10651R.layout.item_color_set));
            hashMap.put("layout/item_context_menu_0", Integer.valueOf(C10651R.layout.item_context_menu));
            hashMap.put("layout/item_count_down_multiple_time_list_0", Integer.valueOf(C10651R.layout.item_count_down_multiple_time_list));
            hashMap.put("layout/item_count_down_record_0", Integer.valueOf(C10651R.layout.item_count_down_record));
            hashMap.put("layout/item_count_up_history_time_list_0", Integer.valueOf(C10651R.layout.item_count_up_history_time_list));
            hashMap.put("layout/item_count_up_popup_time_list_0", Integer.valueOf(C10651R.layout.item_count_up_popup_time_list));
            hashMap.put("layout/item_count_up_record_0", Integer.valueOf(C10651R.layout.item_count_up_record));
            hashMap.put("layout/item_custom_shortcut_bar_0", Integer.valueOf(C10651R.layout.item_custom_shortcut_bar));
            hashMap.put("layout/item_custom_shortcut_bar_title_0", Integer.valueOf(C10651R.layout.item_custom_shortcut_bar_title));
            hashMap.put("layout/item_doc_bookmark_0", Integer.valueOf(C10651R.layout.item_doc_bookmark));
            hashMap.put("layout/item_doc_draft_overview_page_0", Integer.valueOf(C10651R.layout.item_doc_draft_overview_page));
            hashMap.put("layout/item_doc_excerpt_0", Integer.valueOf(C10651R.layout.item_doc_excerpt));
            hashMap.put("layout/item_doc_overview_page_0", Integer.valueOf(C10651R.layout.item_doc_overview_page));
            hashMap.put("layout/item_doc_toc_0", Integer.valueOf(C10651R.layout.item_doc_toc));
            hashMap.put("layout/item_excerpt_quote_0", Integer.valueOf(C10651R.layout.item_excerpt_quote));
            hashMap.put("layout/item_feature_resource_0", Integer.valueOf(C10651R.layout.item_feature_resource));
            hashMap.put("layout/item_feedback_picture_layout_0", Integer.valueOf(C10651R.layout.item_feedback_picture_layout));
            hashMap.put("layout/item_feedback_type_layout_0", Integer.valueOf(C10651R.layout.item_feedback_type_layout));
            hashMap.put("layout/item_font_import_0", Integer.valueOf(C10651R.layout.item_font_import));
            hashMap.put("layout/item_font_show_0", Integer.valueOf(C10651R.layout.item_font_show));
            hashMap.put("layout/item_hwr_resource_0", Integer.valueOf(C10651R.layout.item_hwr_resource));
            hashMap.put("layout/item_image_picker_0", Integer.valueOf(C10651R.layout.item_image_picker));
            hashMap.put("layout/item_ink_font_0", Integer.valueOf(C10651R.layout.item_ink_font));
            hashMap.put("layout/item_lasso_element_0", Integer.valueOf(C10651R.layout.item_lasso_element));
            hashMap.put("layout/item_layer_0", Integer.valueOf(C10651R.layout.item_layer));
            hashMap.put("layout/item_list_import_files_0", Integer.valueOf(C10651R.layout.item_list_import_files));
            hashMap.put("layout/item_media_store_image_0", Integer.valueOf(C10651R.layout.item_media_store_image));
            hashMap.put("layout/item_my_count_down_task_0", Integer.valueOf(C10651R.layout.item_my_count_down_task));
            hashMap.put("layout/item_my_count_down_task_time_list_0", Integer.valueOf(C10651R.layout.item_my_count_down_task_time_list));
            hashMap.put("layout/item_note_overview_0", Integer.valueOf(C10651R.layout.item_note_overview));
            hashMap.put("layout/item_note_page_thumbnail_0", Integer.valueOf(C10651R.layout.item_note_page_thumbnail));
            hashMap.put("layout/item_note_removed_page_thumbnail_0", Integer.valueOf(C10651R.layout.item_note_removed_page_thumbnail));
            hashMap.put("layout/item_note_tab_0", Integer.valueOf(C10651R.layout.item_note_tab));
            hashMap.put("layout/item_note_tab_drag_0", Integer.valueOf(C10651R.layout.item_note_tab_drag));
            hashMap.put("layout/item_note_tab_management_0", Integer.valueOf(C10651R.layout.item_note_tab_management));
            hashMap.put("layout/item_option_select_0", Integer.valueOf(C10651R.layout.item_option_select));
            hashMap.put("layout/item_page_margin_size_0", Integer.valueOf(C10651R.layout.item_page_margin_size));
            hashMap.put("layout/item_page_margin_template_0", Integer.valueOf(C10651R.layout.item_page_margin_template));
            hashMap.put("layout/item_page_margin_template_style_0", Integer.valueOf(C10651R.layout.item_page_margin_template_style));
            hashMap.put("layout/item_pen_box_0", Integer.valueOf(C10651R.layout.item_pen_box));
            hashMap.put("layout/item_pen_box_pen_0", Integer.valueOf(C10651R.layout.item_pen_box_pen));
            hashMap.put("layout/item_pen_box_pen_horizontal_0", Integer.valueOf(C10651R.layout.item_pen_box_pen_horizontal));
            hashMap.put("layout/item_popup_pen_box_pen_0", Integer.valueOf(C10651R.layout.item_popup_pen_box_pen));
            hashMap.put("layout/item_scale_0", Integer.valueOf(C10651R.layout.item_scale));
            hashMap.put("layout/item_search_filter_0", Integer.valueOf(C10651R.layout.item_search_filter));
            hashMap.put("layout/item_select_move_to_layer_0", Integer.valueOf(C10651R.layout.item_select_move_to_layer));
            hashMap.put("layout/item_selection_menu_0", Integer.valueOf(C10651R.layout.item_selection_menu));
            hashMap.put("layout/item_selector_option_0", Integer.valueOf(C10651R.layout.item_selector_option));
            hashMap.put("layout/item_share_resource_0", Integer.valueOf(C10651R.layout.item_share_resource));
            hashMap.put("layout/item_shortcut_bar_more_function_audio_0", Integer.valueOf(C10651R.layout.item_shortcut_bar_more_function_audio));
            hashMap.put("layout/item_shortcut_bar_more_function_audio_set_0", Integer.valueOf(C10651R.layout.item_shortcut_bar_more_function_audio_set));
            hashMap.put("layout/item_shortcut_bar_more_function_normal_0", Integer.valueOf(C10651R.layout.item_shortcut_bar_more_function_normal));
            hashMap.put("layout/item_sticker_0", Integer.valueOf(C10651R.layout.item_sticker));
            hashMap.put("layout/item_sticker_image_0", Integer.valueOf(C10651R.layout.item_sticker_image));
            hashMap.put("layout/item_tape_fill_style_0", Integer.valueOf(C10651R.layout.item_tape_fill_style));
            hashMap.put("layout/item_text_size_space_0", Integer.valueOf(C10651R.layout.item_text_size_space));
            hashMap.put("layout/item_theme_0", Integer.valueOf(C10651R.layout.item_theme));
            hashMap.put("layout/item_theme_header_0", Integer.valueOf(C10651R.layout.item_theme_header));
            hashMap.put("layout/item_toolbar_custom_0", Integer.valueOf(C10651R.layout.item_toolbar_custom));
            hashMap.put("layout/item_universal_shape_color_0", Integer.valueOf(C10651R.layout.item_universal_shape_color));
            hashMap.put("layout/item_universal_shape_type_0", Integer.valueOf(C10651R.layout.item_universal_shape_type));
            hashMap.put("layout/layout_account_verify_email_0", Integer.valueOf(C10651R.layout.layout_account_verify_email));
            hashMap.put("layout/layout_account_verify_huawei_0", Integer.valueOf(C10651R.layout.layout_account_verify_huawei));
            hashMap.put("layout/layout_account_verify_password_0", Integer.valueOf(C10651R.layout.layout_account_verify_password));
            hashMap.put("layout/layout_account_verify_phone_0", Integer.valueOf(C10651R.layout.layout_account_verify_phone));
            hashMap.put("layout/layout_account_verify_wechat_0", Integer.valueOf(C10651R.layout.layout_account_verify_wechat));
            hashMap.put("layout/layout_category_title_container_0", Integer.valueOf(C10651R.layout.layout_category_title_container));
            hashMap.put("layout/layout_color_property_0", Integer.valueOf(C10651R.layout.layout_color_property));
            hashMap.put("layout/layout_color_property_large_0", Integer.valueOf(C10651R.layout.layout_color_property_large));
            hashMap.put("layout/layout_counter_history_empty_0", Integer.valueOf(C10651R.layout.layout_counter_history_empty));
            hashMap.put("layout/layout_counter_tips_view_0", Integer.valueOf(C10651R.layout.layout_counter_tips_view));
            hashMap.put("layout/layout_counter_view_0", Integer.valueOf(C10651R.layout.layout_counter_view));
            hashMap.put("layout/layout_custom_shortcuts_view_0", Integer.valueOf(C10651R.layout.layout_custom_shortcuts_view));
            hashMap.put("layout/layout_doc_search_0", Integer.valueOf(C10651R.layout.layout_doc_search));
            hashMap.put("layout/layout_email_verify_item_0", Integer.valueOf(C10651R.layout.layout_email_verify_item));
            hashMap.put("layout/layout_eraser_type_params_container_0", Integer.valueOf(C10651R.layout.layout_eraser_type_params_container));
            hashMap.put("layout/layout_excerpt_type_params_container_0", Integer.valueOf(C10651R.layout.layout_excerpt_type_params_container));
            hashMap.put("layout/layout_function_tool_0", Integer.valueOf(C10651R.layout.layout_function_tool));
            hashMap.put("layout/layout_image_shape_params_container_0", Integer.valueOf(C10651R.layout.layout_image_shape_params_container));
            hashMap.put("layout/layout_ink_beautify_typeset_0", Integer.valueOf(C10651R.layout.layout_ink_beautify_typeset));
            hashMap.put("layout/layout_input_text_tool_0", Integer.valueOf(C10651R.layout.layout_input_text_tool));
            hashMap.put("layout/layout_item_text_0", Integer.valueOf(C10651R.layout.layout_item_text));
            hashMap.put("layout/layout_lasso_type_params_container_0", Integer.valueOf(C10651R.layout.layout_lasso_type_params_container));
            hashMap.put("layout/layout_magnifier_view_port_0", Integer.valueOf(C10651R.layout.layout_magnifier_view_port));
            hashMap.put("layout/layout_note_common_settings_0", Integer.valueOf(C10651R.layout.layout_note_common_settings));
            hashMap.put("layout/layout_note_export_settings_0", Integer.valueOf(C10651R.layout.layout_note_export_settings));
            hashMap.put("layout/layout_note_page_settings_0", Integer.valueOf(C10651R.layout.layout_note_page_settings));
            hashMap.put("layout/layout_note_tab_0", Integer.valueOf(C10651R.layout.layout_note_tab));
            hashMap.put("layout/layout_note_tag_0", Integer.valueOf(C10651R.layout.layout_note_tag));
            hashMap.put("layout/layout_page_indicator_0", Integer.valueOf(C10651R.layout.layout_page_indicator));
            hashMap.put("layout/layout_page_num_float_bar_0", Integer.valueOf(C10651R.layout.layout_page_num_float_bar));
            hashMap.put("layout/layout_pen_box_0", Integer.valueOf(C10651R.layout.layout_pen_box));
            hashMap.put("layout/layout_phone_verify_item_0", Integer.valueOf(C10651R.layout.layout_phone_verify_item));
            hashMap.put("layout/layout_physical_mark_pen_group_0", Integer.valueOf(C10651R.layout.layout_physical_mark_pen_group));
            hashMap.put("layout/layout_physical_shape_group_0", Integer.valueOf(C10651R.layout.layout_physical_shape_group));
            hashMap.put("layout/layout_ruler_units_0", Integer.valueOf(C10651R.layout.layout_ruler_units));
            hashMap.put("layout/layout_scale_indicator_0", Integer.valueOf(C10651R.layout.layout_scale_indicator));
            hashMap.put("layout/layout_screen_capture_0", Integer.valueOf(C10651R.layout.layout_screen_capture));
            hashMap.put("layout/layout_selection_menu_0", Integer.valueOf(C10651R.layout.layout_selection_menu));
            hashMap.put("layout/layout_selection_menu_paged_0", Integer.valueOf(C10651R.layout.layout_selection_menu_paged));
            hashMap.put("layout/layout_shape_params_container_0", Integer.valueOf(C10651R.layout.layout_shape_params_container));
            hashMap.put("layout/layout_shape_tool_auto_0", Integer.valueOf(C10651R.layout.layout_shape_tool_auto));
            hashMap.put("layout/layout_shapes_location_bar_0", Integer.valueOf(C10651R.layout.layout_shapes_location_bar));
            hashMap.put("layout/layout_sticker_category_main_0", Integer.valueOf(C10651R.layout.layout_sticker_category_main));
            hashMap.put("layout/layout_sticker_category_select_0", Integer.valueOf(C10651R.layout.layout_sticker_category_select));
            hashMap.put("layout/layout_sticker_category_sub_0", Integer.valueOf(C10651R.layout.layout_sticker_category_sub));
            hashMap.put("layout/layout_sticker_params_container_0", Integer.valueOf(C10651R.layout.layout_sticker_params_container));
            hashMap.put("layout/layout_stroke_and_color_0", Integer.valueOf(C10651R.layout.layout_stroke_and_color));
            hashMap.put("layout/layout_swipe_recycle_view_0", Integer.valueOf(C10651R.layout.layout_swipe_recycle_view));
            hashMap.put("layout/layout_template_title_orientation_container_0", Integer.valueOf(C10651R.layout.layout_template_title_orientation_container));
            hashMap.put("layout/layout_time_picker_view_0", Integer.valueOf(C10651R.layout.layout_time_picker_view));
            hashMap.put("layout/layout_title_edit_text_0", Integer.valueOf(C10651R.layout.layout_title_edit_text));
            hashMap.put("layout/layout_tool_operation_tip_0", Integer.valueOf(C10651R.layout.layout_tool_operation_tip));
            hashMap.put("layout/layout_user_info_0", Integer.valueOf(C10651R.layout.layout_user_info));
            hashMap.put("layout/layout_wifi_and_mobile_container_0", Integer.valueOf(C10651R.layout.layout_wifi_and_mobile_container));
            hashMap.put("layout/magnifier_editor_layout_0", Integer.valueOf(C10651R.layout.magnifier_editor_layout));
            hashMap.put("layout/popup_audio_action_0", Integer.valueOf(C10651R.layout.popup_audio_action));
            hashMap.put("layout/popup_audio_list_0", Integer.valueOf(C10651R.layout.popup_audio_list));
            hashMap.put("layout/popup_ballpoint_pen_0", Integer.valueOf(C10651R.layout.popup_ballpoint_pen));
            hashMap.put("layout/popup_calligraphy_pen_0", Integer.valueOf(C10651R.layout.popup_calligraphy_pen));
            hashMap.put("layout/popup_context_menu_0", Integer.valueOf(C10651R.layout.popup_context_menu));
            hashMap.put("layout/popup_counter_history_options_0", Integer.valueOf(C10651R.layout.popup_counter_history_options));
            hashMap.put("layout/popup_counter_more_options_0", Integer.valueOf(C10651R.layout.popup_counter_more_options));
            hashMap.put("layout/popup_counter_setting_0", Integer.valueOf(C10651R.layout.popup_counter_setting));
            hashMap.put("layout/popup_create_note_0", Integer.valueOf(C10651R.layout.popup_create_note));
            hashMap.put("layout/popup_custom_cover_0", Integer.valueOf(C10651R.layout.popup_custom_cover));
            hashMap.put("layout/popup_doc_bookmark_action_0", Integer.valueOf(C10651R.layout.popup_doc_bookmark_action));
            hashMap.put("layout/popup_doc_excerpt_action_0", Integer.valueOf(C10651R.layout.popup_doc_excerpt_action));
            hashMap.put("layout/popup_doc_overview_action_0", Integer.valueOf(C10651R.layout.popup_doc_overview_action));
            hashMap.put("layout/popup_doc_toc_action_0", Integer.valueOf(C10651R.layout.popup_doc_toc_action));
            hashMap.put("layout/popup_eraser_0", Integer.valueOf(C10651R.layout.popup_eraser));
            hashMap.put("layout/popup_excerpt_jump_model_list_0", Integer.valueOf(C10651R.layout.popup_excerpt_jump_model_list));
            hashMap.put("layout/popup_excerpt_menu_0", Integer.valueOf(C10651R.layout.popup_excerpt_menu));
            hashMap.put("layout/popup_excerpt_pen_menu_0", Integer.valueOf(C10651R.layout.popup_excerpt_pen_menu));
            hashMap.put("layout/popup_folder_op_0", Integer.valueOf(C10651R.layout.popup_folder_op));
            hashMap.put("layout/popup_guide_image_0", Integer.valueOf(C10651R.layout.popup_guide_image));
            hashMap.put("layout/popup_guide_mix_0", Integer.valueOf(C10651R.layout.popup_guide_mix));
            hashMap.put("layout/popup_guide_text_0", Integer.valueOf(C10651R.layout.popup_guide_text));
            hashMap.put("layout/popup_image_0", Integer.valueOf(C10651R.layout.popup_image));
            hashMap.put("layout/popup_ink_beautify_0", Integer.valueOf(C10651R.layout.popup_ink_beautify));
            hashMap.put("layout/popup_ink_beautify_help_0", Integer.valueOf(C10651R.layout.popup_ink_beautify_help));
            hashMap.put("layout/popup_ink_font_list_0", Integer.valueOf(C10651R.layout.popup_ink_font_list));
            hashMap.put("layout/popup_ink_pen_0", Integer.valueOf(C10651R.layout.popup_ink_pen));
            hashMap.put("layout/popup_insert_page_0", Integer.valueOf(C10651R.layout.popup_insert_page));
            hashMap.put("layout/popup_laser_shape_0", Integer.valueOf(C10651R.layout.popup_laser_shape));
            hashMap.put("layout/popup_lasso_0", Integer.valueOf(C10651R.layout.popup_lasso));
            hashMap.put("layout/popup_layer_0", Integer.valueOf(C10651R.layout.popup_layer));
            hashMap.put("layout/popup_link_redbook_0", Integer.valueOf(C10651R.layout.popup_link_redbook));
            hashMap.put("layout/popup_link_website_0", Integer.valueOf(C10651R.layout.popup_link_website));
            hashMap.put("layout/popup_loading_0", Integer.valueOf(C10651R.layout.popup_loading));
            hashMap.put("layout/popup_long_press_0", Integer.valueOf(C10651R.layout.popup_long_press));
            hashMap.put("layout/popup_long_press_paste_0", Integer.valueOf(C10651R.layout.popup_long_press_paste));
            hashMap.put("layout/popup_magnifier_0", Integer.valueOf(C10651R.layout.popup_magnifier));
            hashMap.put("layout/popup_margin_size_0", Integer.valueOf(C10651R.layout.popup_margin_size));
            hashMap.put("layout/popup_margin_style_0", Integer.valueOf(C10651R.layout.popup_margin_style));
            hashMap.put("layout/popup_margin_template_space_0", Integer.valueOf(C10651R.layout.popup_margin_template_space));
            hashMap.put("layout/popup_mark_pen_0", Integer.valueOf(C10651R.layout.popup_mark_pen));
            hashMap.put("layout/popup_note_auto_lock_interval_0", Integer.valueOf(C10651R.layout.popup_note_auto_lock_interval));
            hashMap.put("layout/popup_note_document_more_settings_0", Integer.valueOf(C10651R.layout.popup_note_document_more_settings));
            hashMap.put("layout/popup_note_list_dust_bin_op_0", Integer.valueOf(C10651R.layout.popup_note_list_dust_bin_op));
            hashMap.put("layout/popup_note_list_more_operate_0", Integer.valueOf(C10651R.layout.popup_note_list_more_operate));
            hashMap.put("layout/popup_note_list_op_0", Integer.valueOf(C10651R.layout.popup_note_list_op));
            hashMap.put("layout/popup_note_list_sort_0", Integer.valueOf(C10651R.layout.popup_note_list_sort));
            hashMap.put("layout/popup_note_mode_0", Integer.valueOf(C10651R.layout.popup_note_mode));
            hashMap.put("layout/popup_note_overview_options_0", Integer.valueOf(C10651R.layout.popup_note_overview_options));
            hashMap.put("layout/popup_page_num_float_panel_0", Integer.valueOf(C10651R.layout.popup_page_num_float_panel));
            hashMap.put("layout/popup_page_recycle_bin_0", Integer.valueOf(C10651R.layout.popup_page_recycle_bin));
            hashMap.put("layout/popup_path_op_0", Integer.valueOf(C10651R.layout.popup_path_op));
            hashMap.put("layout/popup_pen_create_0", Integer.valueOf(C10651R.layout.popup_pen_create));
            hashMap.put("layout/popup_pen_list_0", Integer.valueOf(C10651R.layout.popup_pen_list));
            hashMap.put("layout/popup_pen_size_0", Integer.valueOf(C10651R.layout.popup_pen_size));
            hashMap.put("layout/popup_pencil_0", Integer.valueOf(C10651R.layout.popup_pencil));
            hashMap.put("layout/popup_quota_not_enough_0", Integer.valueOf(C10651R.layout.popup_quota_not_enough));
            hashMap.put("layout/popup_quote_menu_0", Integer.valueOf(C10651R.layout.popup_quote_menu));
            hashMap.put("layout/popup_release_note_0", Integer.valueOf(C10651R.layout.popup_release_note));
            hashMap.put("layout/popup_scale_collection_0", Integer.valueOf(C10651R.layout.popup_scale_collection));
            hashMap.put("layout/popup_seek_bar_0", Integer.valueOf(C10651R.layout.popup_seek_bar));
            hashMap.put("layout/popup_select_file_pages_0", Integer.valueOf(C10651R.layout.popup_select_file_pages));
            hashMap.put("layout/popup_select_move_to_layer_0", Integer.valueOf(C10651R.layout.popup_select_move_to_layer));
            hashMap.put("layout/popup_select_note_pages_0", Integer.valueOf(C10651R.layout.popup_select_note_pages));
            hashMap.put("layout/popup_shape_link_0", Integer.valueOf(C10651R.layout.popup_shape_link));
            hashMap.put("layout/popup_shape_link_edit_0", Integer.valueOf(C10651R.layout.popup_shape_link_edit));
            hashMap.put("layout/popup_shape_tag_0", Integer.valueOf(C10651R.layout.popup_shape_tag));
            hashMap.put("layout/popup_shape_toolbar_custom_0", Integer.valueOf(C10651R.layout.popup_shape_toolbar_custom));
            hashMap.put("layout/popup_shortcut_bar_custom_0", Integer.valueOf(C10651R.layout.popup_shortcut_bar_custom));
            hashMap.put("layout/popup_shortcut_bar_more_functions_0", Integer.valueOf(C10651R.layout.popup_shortcut_bar_more_functions));
            hashMap.put("layout/popup_soft_paint_pen_0", Integer.valueOf(C10651R.layout.popup_soft_paint_pen));
            hashMap.put("layout/popup_stickers_0", Integer.valueOf(C10651R.layout.popup_stickers));
            hashMap.put("layout/popup_switch_note_settings_0", Integer.valueOf(C10651R.layout.popup_switch_note_settings));
            hashMap.put("layout/popup_sync_error_0", Integer.valueOf(C10651R.layout.popup_sync_error));
            hashMap.put("layout/popup_tab_managment_0", Integer.valueOf(C10651R.layout.popup_tab_managment));
            hashMap.put("layout/popup_tab_note_options_0", Integer.valueOf(C10651R.layout.popup_tab_note_options));
            hashMap.put("layout/popup_tag_op_0", Integer.valueOf(C10651R.layout.popup_tag_op));
            hashMap.put("layout/popup_tags_list_0", Integer.valueOf(C10651R.layout.popup_tags_list));
            hashMap.put("layout/popup_tape_pen_0", Integer.valueOf(C10651R.layout.popup_tape_pen));
            hashMap.put("layout/popup_template_edit_0", Integer.valueOf(C10651R.layout.popup_template_edit));
            hashMap.put("layout/popup_template_space_args_0", Integer.valueOf(C10651R.layout.popup_template_space_args));
            hashMap.put("layout/popup_text_font_list_0", Integer.valueOf(C10651R.layout.popup_text_font_list));
            hashMap.put("layout/popup_text_size_space_0", Integer.valueOf(C10651R.layout.popup_text_size_space));
            hashMap.put("layout/popup_textinput_selection_menu_0", Integer.valueOf(C10651R.layout.popup_textinput_selection_menu));
            hashMap.put("layout/popup_theme_0", Integer.valueOf(C10651R.layout.popup_theme));
            hashMap.put("layout/popup_tips_guide_0", Integer.valueOf(C10651R.layout.popup_tips_guide));
            hashMap.put("layout/popup_universal_shape_0", Integer.valueOf(C10651R.layout.popup_universal_shape));
            hashMap.put("layout/popup_upgrade_image_0", Integer.valueOf(C10651R.layout.popup_upgrade_image));
            hashMap.put("layout/popup_upgrade_mix_0", Integer.valueOf(C10651R.layout.popup_upgrade_mix));
            hashMap.put("layout/popup_upgrade_text_0", Integer.valueOf(C10651R.layout.popup_upgrade_text));
            hashMap.put("layout/popup_web_view_0", Integer.valueOf(C10651R.layout.popup_web_view));
            hashMap.put("layout/popup_write_pen_group_0", Integer.valueOf(C10651R.layout.popup_write_pen_group));
            hashMap.put("layout/restore_error_item_0", Integer.valueOf(C10651R.layout.restore_error_item));
            hashMap.put("layout/split_screen_layout_0", Integer.valueOf(C10651R.layout.split_screen_layout));
            hashMap.put("layout/tags_linearlayout_child_layout_0", Integer.valueOf(C10651R.layout.tags_linearlayout_child_layout));
            hashMap.put("layout/view_guide_0", Integer.valueOf(C10651R.layout.view_guide));
            hashMap.put("layout/view_tool_bar_container_0", Integer.valueOf(C10651R.layout.view_tool_bar_container));
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray(f53103Q5);
        f53110R5 = sparseIntArray;
        sparseIntArray.put(C10651R.layout.activity_html_window, 1);
        sparseIntArray.put(C10651R.layout.activity_note_detail, 2);
        sparseIntArray.put(C10651R.layout.activity_splash, 3);
        sparseIntArray.put(C10651R.layout.backup_error_item, 4);
        sparseIntArray.put(C10651R.layout.change_note_template_title_container, 5);
        sparseIntArray.put(C10651R.layout.counter_time_list_view, 6);
        sparseIntArray.put(C10651R.layout.create_note_template_title_container, 7);
        sparseIntArray.put(C10651R.layout.custom_scroll_bar_recycle_view, 8);
        sparseIntArray.put(C10651R.layout.dialog_add_sibling_doc_toc_entry, 9);
        sparseIntArray.put(C10651R.layout.dialog_add_to_toc, 10);
        sparseIntArray.put(C10651R.layout.dialog_area_code, 11);
        sparseIntArray.put(C10651R.layout.dialog_backup_process, 12);
        sparseIntArray.put(C10651R.layout.dialog_charge_feature, 13);
        sparseIntArray.put(C10651R.layout.dialog_common_progress, 14);
        sparseIntArray.put(C10651R.layout.dialog_config_note_password, 15);
        sparseIntArray.put(C10651R.layout.dialog_content_input, 16);
        sparseIntArray.put(C10651R.layout.dialog_convert_file_progress, 17);
        sparseIntArray.put(C10651R.layout.dialog_convert_to_text, 18);
        sparseIntArray.put(C10651R.layout.dialog_create_folder, 19);
        sparseIntArray.put(C10651R.layout.dialog_create_sub_folder, 20);
        sparseIntArray.put(C10651R.layout.dialog_create_sub_tag, 21);
        sparseIntArray.put(C10651R.layout.dialog_create_tag, 22);
        sparseIntArray.put(C10651R.layout.dialog_drive_recovery, 23);
        sparseIntArray.put(C10651R.layout.dialog_edit_folder, 24);
        sparseIntArray.put(C10651R.layout.dialog_edit_list_note, 25);
        sparseIntArray.put(C10651R.layout.dialog_edit_tag, 26);
        sparseIntArray.put(C10651R.layout.dialog_edit_tag_for_note, 27);
        sparseIntArray.put(C10651R.layout.dialog_image_cropper, 28);
        sparseIntArray.put(C10651R.layout.dialog_import_backup_process, 29);
        sparseIntArray.put(C10651R.layout.dialog_import_file_progress, 30);
        sparseIntArray.put(C10651R.layout.dialog_import_success, 31);
        sparseIntArray.put(C10651R.layout.dialog_input_password, 32);
        sparseIntArray.put(C10651R.layout.dialog_loading, 33);
        sparseIntArray.put(C10651R.layout.dialog_local_backup, 34);
        sparseIntArray.put(C10651R.layout.dialog_local_recovery, 35);
        sparseIntArray.put(C10651R.layout.dialog_local_restore_file, 36);
        sparseIntArray.put(C10651R.layout.dialog_login_account_list, 37);
        sparseIntArray.put(C10651R.layout.dialog_login_loading, 38);
        sparseIntArray.put(C10651R.layout.dialog_login_policy, 39);
        sparseIntArray.put(C10651R.layout.dialog_magnifier_feature, 40);
        sparseIntArray.put(C10651R.layout.dialog_manage_folder, 41);
        sparseIntArray.put(C10651R.layout.dialog_manage_tag, 42);
        sparseIntArray.put(C10651R.layout.dialog_network_backup, 43);
        sparseIntArray.put(C10651R.layout.dialog_note_auth_password, 44);
        sparseIntArray.put(C10651R.layout.dialog_note_count_register_guide, 45);
        sparseIntArray.put(C10651R.layout.dialog_note_export, 46);
        sparseIntArray.put(C10651R.layout.dialog_ocr_text_convert, 47);
        sparseIntArray.put(C10651R.layout.dialog_page_margin_adjust, 48);
        sparseIntArray.put(C10651R.layout.dialog_parse_note_progress, 49);
        sparseIntArray.put(C10651R.layout.dialog_policy, 50);
        sparseIntArray.put(C10651R.layout.dialog_progress, 51);
        sparseIntArray.put(C10651R.layout.dialog_security_verification, 52);
        sparseIntArray.put(C10651R.layout.dialog_select_folder, 53);
        sparseIntArray.put(C10651R.layout.dialog_select_import_folder_location, 54);
        sparseIntArray.put(C10651R.layout.dialog_select_import_location, 55);
        sparseIntArray.put(C10651R.layout.dialog_select_import_tag, 56);
        sparseIntArray.put(C10651R.layout.dialog_select_tag, 57);
        sparseIntArray.put(C10651R.layout.dialog_settings_drive, 58);
        sparseIntArray.put(C10651R.layout.dialog_splash_policy, 59);
        sparseIntArray.put(C10651R.layout.dialog_text_font_import, 60);
        sparseIntArray.put(C10651R.layout.dialog_update_toc_entry_title, 61);
        sparseIntArray.put(C10651R.layout.dialog_view_image, 62);
        sparseIntArray.put(C10651R.layout.dialog_wechat_login, 63);
        sparseIntArray.put(C10651R.layout.drag_bottom_layout, 64);
        sparseIntArray.put(C10651R.layout.drag_right_layout, 65);
        sparseIntArray.put(C10651R.layout.editor_view_drag_layout, 66);
        sparseIntArray.put(C10651R.layout.editor_view_lock_layout, 67);
        sparseIntArray.put(C10651R.layout.export_error_item, 68);
        sparseIntArray.put(C10651R.layout.fragment_account_center, 69);
        sparseIntArray.put(C10651R.layout.fragment_bind_email, 70);
        sparseIntArray.put(C10651R.layout.fragment_bind_phone, 71);
        sparseIntArray.put(C10651R.layout.fragment_container, 72);
        sparseIntArray.put(C10651R.layout.fragment_count_down, 73);
        sparseIntArray.put(C10651R.layout.fragment_count_up, 74);
        sparseIntArray.put(C10651R.layout.fragment_counter_alarm_setting, 75);
        sparseIntArray.put(C10651R.layout.fragment_counter_history, 76);
        sparseIntArray.put(C10651R.layout.fragment_counter_setting_home, 77);
        sparseIntArray.put(C10651R.layout.fragment_data_repository, 78);
        sparseIntArray.put(C10651R.layout.fragment_doc_bookmark, 79);
        sparseIntArray.put(C10651R.layout.fragment_doc_excerpt, 80);
        sparseIntArray.put(C10651R.layout.fragment_doc_overview, 81);
        sparseIntArray.put(C10651R.layout.fragment_doc_toc, 82);
        sparseIntArray.put(C10651R.layout.fragment_draft_doc_overview, 83);
        sparseIntArray.put(C10651R.layout.fragment_edit_counter_setting, 84);
        sparseIntArray.put(C10651R.layout.fragment_edit_multiple_count_down, 85);
        sparseIntArray.put(C10651R.layout.fragment_edit_normal_count_down, 86);
        sparseIntArray.put(C10651R.layout.fragment_email_verify, 87);
        sparseIntArray.put(C10651R.layout.fragment_export_specified_pages, 88);
        sparseIntArray.put(C10651R.layout.fragment_image_crop, 89);
        sparseIntArray.put(C10651R.layout.fragment_log_off_agreement, 90);
        sparseIntArray.put(C10651R.layout.fragment_login, 91);
        sparseIntArray.put(C10651R.layout.fragment_logoff_by_email, 92);
        sparseIntArray.put(C10651R.layout.fragment_logoff_by_phone, 93);
        sparseIntArray.put(C10651R.layout.fragment_material_template, 94);
        sparseIntArray.put(C10651R.layout.fragment_message_center, 95);
        sparseIntArray.put(C10651R.layout.fragment_mixed_verify, 96);
        sparseIntArray.put(C10651R.layout.fragment_my_count_down_task, 97);
        sparseIntArray.put(C10651R.layout.fragment_note_detail, 98);
        sparseIntArray.put(C10651R.layout.fragment_note_folder_root, 99);
        sparseIntArray.put(C10651R.layout.fragment_note_list, 100);
        sparseIntArray.put(C10651R.layout.fragment_note_list_container, 101);
        sparseIntArray.put(C10651R.layout.fragment_note_list_drawer_function, 102);
        sparseIntArray.put(C10651R.layout.fragment_note_list_function, 103);
        sparseIntArray.put(C10651R.layout.fragment_note_list_view_page, 104);
        sparseIntArray.put(C10651R.layout.fragment_note_overview, 105);
        sparseIntArray.put(C10651R.layout.fragment_note_sidebar, 106);
        sparseIntArray.put(C10651R.layout.fragment_note_top_container, 107);
        sparseIntArray.put(C10651R.layout.fragment_password_reset, 108);
        sparseIntArray.put(C10651R.layout.fragment_phone_verify, 109);
        sparseIntArray.put(C10651R.layout.fragment_recent_login, 110);
        sparseIntArray.put(C10651R.layout.fragment_search_note, 111);
        sparseIntArray.put(C10651R.layout.fragment_settings_ai, 112);
        sparseIntArray.put(C10651R.layout.fragment_settings_cloud, 113);
        sparseIntArray.put(C10651R.layout.fragment_settings_cloud_back_up, 114);
        sparseIntArray.put(C10651R.layout.fragment_settings_detail_main, 115);
        sparseIntArray.put(C10651R.layout.fragment_settings_doc, 116);
        sparseIntArray.put(C10651R.layout.fragment_settings_gesture, 117);
        sparseIntArray.put(C10651R.layout.fragment_settings_help_and_feedback, 118);
        sparseIntArray.put(C10651R.layout.fragment_settings_local_back_up, 119);
        sparseIntArray.put(C10651R.layout.fragment_settings_more, 120);
        sparseIntArray.put(C10651R.layout.fragment_settings_privacy, 121);
        sparseIntArray.put(C10651R.layout.fragment_settings_stylus, 122);
        sparseIntArray.put(C10651R.layout.fragment_settings_theme, 123);
        sparseIntArray.put(C10651R.layout.fragment_settings_tools, 124);
        sparseIntArray.put(C10651R.layout.fragment_share_resource, 125);
        sparseIntArray.put(C10651R.layout.fragment_unbind_email, 126);
        sparseIntArray.put(C10651R.layout.fragment_unbind_phone, 127);
        sparseIntArray.put(C10651R.layout.fragment_user_center, 128);
        sparseIntArray.put(C10651R.layout.fragment_verify_method, 129);
        sparseIntArray.put(C10651R.layout.fragment_wechat_verify, 130);
        sparseIntArray.put(C10651R.layout.include_art_ink_pen_popup_params, 131);
        sparseIntArray.put(C10651R.layout.include_ballpoint_pen_popup_params, 132);
        sparseIntArray.put(C10651R.layout.include_icp_container, 133);
        sparseIntArray.put(C10651R.layout.include_ink_pen_popup_params, 134);
        sparseIntArray.put(C10651R.layout.include_pencil_popup_params, 135);
        sparseIntArray.put(C10651R.layout.include_popup_lasso_container, 136);
        sparseIntArray.put(C10651R.layout.include_soft_paint_pen_popup_params, 137);
        sparseIntArray.put(C10651R.layout.item_area_code, 138);
        sparseIntArray.put(C10651R.layout.item_audio, 139);
        sparseIntArray.put(C10651R.layout.item_backup_path, 140);
        sparseIntArray.put(C10651R.layout.item_candidate_shortcut, 141);
        sparseIntArray.put(C10651R.layout.item_charge_feature, 142);
        sparseIntArray.put(C10651R.layout.item_color_set, 143);
        sparseIntArray.put(C10651R.layout.item_context_menu, 144);
        sparseIntArray.put(C10651R.layout.item_count_down_multiple_time_list, 145);
        sparseIntArray.put(C10651R.layout.item_count_down_record, 146);
        sparseIntArray.put(C10651R.layout.item_count_up_history_time_list, 147);
        sparseIntArray.put(C10651R.layout.item_count_up_popup_time_list, 148);
        sparseIntArray.put(C10651R.layout.item_count_up_record, 149);
        sparseIntArray.put(C10651R.layout.item_custom_shortcut_bar, 150);
        sparseIntArray.put(C10651R.layout.item_custom_shortcut_bar_title, 151);
        sparseIntArray.put(C10651R.layout.item_doc_bookmark, 152);
        sparseIntArray.put(C10651R.layout.item_doc_draft_overview_page, 153);
        sparseIntArray.put(C10651R.layout.item_doc_excerpt, 154);
        sparseIntArray.put(C10651R.layout.item_doc_overview_page, 155);
        sparseIntArray.put(C10651R.layout.item_doc_toc, 156);
        sparseIntArray.put(C10651R.layout.item_excerpt_quote, 157);
        sparseIntArray.put(C10651R.layout.item_feature_resource, 158);
        sparseIntArray.put(C10651R.layout.item_feedback_picture_layout, 159);
        sparseIntArray.put(C10651R.layout.item_feedback_type_layout, 160);
        sparseIntArray.put(C10651R.layout.item_font_import, 161);
        sparseIntArray.put(C10651R.layout.item_font_show, 162);
        sparseIntArray.put(C10651R.layout.item_hwr_resource, 163);
        sparseIntArray.put(C10651R.layout.item_image_picker, 164);
        sparseIntArray.put(C10651R.layout.item_ink_font, 165);
        sparseIntArray.put(C10651R.layout.item_lasso_element, 166);
        sparseIntArray.put(C10651R.layout.item_layer, 167);
        sparseIntArray.put(C10651R.layout.item_list_import_files, 168);
        sparseIntArray.put(C10651R.layout.item_media_store_image, 169);
        sparseIntArray.put(C10651R.layout.item_my_count_down_task, 170);
        sparseIntArray.put(C10651R.layout.item_my_count_down_task_time_list, 171);
        sparseIntArray.put(C10651R.layout.item_note_overview, 172);
        sparseIntArray.put(C10651R.layout.item_note_page_thumbnail, 173);
        sparseIntArray.put(C10651R.layout.item_note_removed_page_thumbnail, 174);
        sparseIntArray.put(C10651R.layout.item_note_tab, 175);
        sparseIntArray.put(C10651R.layout.item_note_tab_drag, 176);
        sparseIntArray.put(C10651R.layout.item_note_tab_management, 177);
        sparseIntArray.put(C10651R.layout.item_option_select, 178);
        sparseIntArray.put(C10651R.layout.item_page_margin_size, 179);
        sparseIntArray.put(C10651R.layout.item_page_margin_template, 180);
        sparseIntArray.put(C10651R.layout.item_page_margin_template_style, 181);
        sparseIntArray.put(C10651R.layout.item_pen_box, 182);
        sparseIntArray.put(C10651R.layout.item_pen_box_pen, 183);
        sparseIntArray.put(C10651R.layout.item_pen_box_pen_horizontal, 184);
        sparseIntArray.put(C10651R.layout.item_popup_pen_box_pen, 185);
        sparseIntArray.put(C10651R.layout.item_scale, 186);
        sparseIntArray.put(C10651R.layout.item_search_filter, 187);
        sparseIntArray.put(C10651R.layout.item_select_move_to_layer, 188);
        sparseIntArray.put(C10651R.layout.item_selection_menu, 189);
        sparseIntArray.put(C10651R.layout.item_selector_option, 190);
        sparseIntArray.put(C10651R.layout.item_share_resource, 191);
        sparseIntArray.put(C10651R.layout.item_shortcut_bar_more_function_audio, 192);
        sparseIntArray.put(C10651R.layout.item_shortcut_bar_more_function_audio_set, 193);
        sparseIntArray.put(C10651R.layout.item_shortcut_bar_more_function_normal, 194);
        sparseIntArray.put(C10651R.layout.item_sticker, 195);
        sparseIntArray.put(C10651R.layout.item_sticker_image, 196);
        sparseIntArray.put(C10651R.layout.item_tape_fill_style, 197);
        sparseIntArray.put(C10651R.layout.item_text_size_space, 198);
        sparseIntArray.put(C10651R.layout.item_theme, 199);
        sparseIntArray.put(C10651R.layout.item_theme_header, 200);
        sparseIntArray.put(C10651R.layout.item_toolbar_custom, 201);
        sparseIntArray.put(C10651R.layout.item_universal_shape_color, 202);
        sparseIntArray.put(C10651R.layout.item_universal_shape_type, 203);
        sparseIntArray.put(C10651R.layout.layout_account_verify_email, 204);
        sparseIntArray.put(C10651R.layout.layout_account_verify_huawei, 205);
        sparseIntArray.put(C10651R.layout.layout_account_verify_password, 206);
        sparseIntArray.put(C10651R.layout.layout_account_verify_phone, 207);
        sparseIntArray.put(C10651R.layout.layout_account_verify_wechat, 208);
        sparseIntArray.put(C10651R.layout.layout_category_title_container, 209);
        sparseIntArray.put(C10651R.layout.layout_color_property, 210);
        sparseIntArray.put(C10651R.layout.layout_color_property_large, 211);
        sparseIntArray.put(C10651R.layout.layout_counter_history_empty, 212);
        sparseIntArray.put(C10651R.layout.layout_counter_tips_view, 213);
        sparseIntArray.put(C10651R.layout.layout_counter_view, 214);
        sparseIntArray.put(C10651R.layout.layout_custom_shortcuts_view, 215);
        sparseIntArray.put(C10651R.layout.layout_doc_search, 216);
        sparseIntArray.put(C10651R.layout.layout_email_verify_item, 217);
        sparseIntArray.put(C10651R.layout.layout_eraser_type_params_container, 218);
        sparseIntArray.put(C10651R.layout.layout_excerpt_type_params_container, 219);
        sparseIntArray.put(C10651R.layout.layout_function_tool, 220);
        sparseIntArray.put(C10651R.layout.layout_image_shape_params_container, 221);
        sparseIntArray.put(C10651R.layout.layout_ink_beautify_typeset, 222);
        sparseIntArray.put(C10651R.layout.layout_input_text_tool, 223);
        sparseIntArray.put(C10651R.layout.layout_item_text, 224);
        sparseIntArray.put(C10651R.layout.layout_lasso_type_params_container, 225);
        sparseIntArray.put(C10651R.layout.layout_magnifier_view_port, 226);
        sparseIntArray.put(C10651R.layout.layout_note_common_settings, 227);
        sparseIntArray.put(C10651R.layout.layout_note_export_settings, 228);
        sparseIntArray.put(C10651R.layout.layout_note_page_settings, 229);
        sparseIntArray.put(C10651R.layout.layout_note_tab, 230);
        sparseIntArray.put(C10651R.layout.layout_note_tag, 231);
        sparseIntArray.put(C10651R.layout.layout_page_indicator, 232);
        sparseIntArray.put(C10651R.layout.layout_page_num_float_bar, 233);
        sparseIntArray.put(C10651R.layout.layout_pen_box, 234);
        sparseIntArray.put(C10651R.layout.layout_phone_verify_item, 235);
        sparseIntArray.put(C10651R.layout.layout_physical_mark_pen_group, 236);
        sparseIntArray.put(C10651R.layout.layout_physical_shape_group, 237);
        sparseIntArray.put(C10651R.layout.layout_ruler_units, 238);
        sparseIntArray.put(C10651R.layout.layout_scale_indicator, 239);
        sparseIntArray.put(C10651R.layout.layout_screen_capture, 240);
        sparseIntArray.put(C10651R.layout.layout_selection_menu, 241);
        sparseIntArray.put(C10651R.layout.layout_selection_menu_paged, f53038H3);
        sparseIntArray.put(C10651R.layout.layout_shape_params_container, 243);
        sparseIntArray.put(C10651R.layout.layout_shape_tool_auto, 244);
        sparseIntArray.put(C10651R.layout.layout_shapes_location_bar, 245);
        sparseIntArray.put(C10651R.layout.layout_sticker_category_main, 246);
        sparseIntArray.put(C10651R.layout.layout_sticker_category_select, f53073M3);
        sparseIntArray.put(C10651R.layout.layout_sticker_category_sub, 248);
        sparseIntArray.put(C10651R.layout.layout_sticker_params_container, 249);
        sparseIntArray.put(C10651R.layout.layout_stroke_and_color, 250);
        sparseIntArray.put(C10651R.layout.layout_swipe_recycle_view, 251);
        sparseIntArray.put(C10651R.layout.layout_template_title_orientation_container, 252);
        sparseIntArray.put(C10651R.layout.layout_time_picker_view, 253);
        sparseIntArray.put(C10651R.layout.layout_title_edit_text, 254);
        sparseIntArray.put(C10651R.layout.layout_tool_operation_tip, 255);
        sparseIntArray.put(C10651R.layout.layout_user_info, 256);
        sparseIntArray.put(C10651R.layout.layout_wifi_and_mobile_container, 257);
        sparseIntArray.put(C10651R.layout.magnifier_editor_layout, 258);
        sparseIntArray.put(C10651R.layout.popup_audio_action, 259);
        sparseIntArray.put(C10651R.layout.popup_audio_list, f53157Z3);
        sparseIntArray.put(C10651R.layout.popup_ballpoint_pen, 261);
        sparseIntArray.put(C10651R.layout.popup_calligraphy_pen, 262);
        sparseIntArray.put(C10651R.layout.popup_context_menu, 263);
        sparseIntArray.put(C10651R.layout.popup_counter_history_options, 264);
        sparseIntArray.put(C10651R.layout.popup_counter_more_options, 265);
        sparseIntArray.put(C10651R.layout.popup_counter_setting, 266);
        sparseIntArray.put(C10651R.layout.popup_create_note, f53206g4);
        sparseIntArray.put(C10651R.layout.popup_custom_cover, f53213h4);
        sparseIntArray.put(C10651R.layout.popup_doc_bookmark_action, 269);
        sparseIntArray.put(C10651R.layout.popup_doc_excerpt_action, 270);
        sparseIntArray.put(C10651R.layout.popup_doc_overview_action, 271);
        sparseIntArray.put(C10651R.layout.popup_doc_toc_action, 272);
        sparseIntArray.put(C10651R.layout.popup_eraser, 273);
        sparseIntArray.put(C10651R.layout.popup_excerpt_jump_model_list, 274);
        sparseIntArray.put(C10651R.layout.popup_excerpt_menu, f53262o4);
        sparseIntArray.put(C10651R.layout.popup_excerpt_pen_menu, 276);
        sparseIntArray.put(C10651R.layout.popup_folder_op, 277);
        sparseIntArray.put(C10651R.layout.popup_guide_image, 278);
        sparseIntArray.put(C10651R.layout.popup_guide_mix, 279);
        sparseIntArray.put(C10651R.layout.popup_guide_text, 280);
        sparseIntArray.put(C10651R.layout.popup_image, 281);
        sparseIntArray.put(C10651R.layout.popup_ink_beautify, 282);
        sparseIntArray.put(C10651R.layout.popup_ink_beautify_help, 283);
        sparseIntArray.put(C10651R.layout.popup_ink_font_list, 284);
        sparseIntArray.put(C10651R.layout.popup_ink_pen, 285);
        sparseIntArray.put(C10651R.layout.popup_insert_page, 286);
        sparseIntArray.put(C10651R.layout.popup_laser_shape, 287);
        sparseIntArray.put(C10651R.layout.popup_lasso, 288);
        sparseIntArray.put(C10651R.layout.popup_layer, 289);
        sparseIntArray.put(C10651R.layout.popup_link_redbook, 290);
        sparseIntArray.put(C10651R.layout.popup_link_website, 291);
        sparseIntArray.put(C10651R.layout.popup_loading, 292);
        sparseIntArray.put(C10651R.layout.popup_long_press, 293);
        sparseIntArray.put(C10651R.layout.popup_long_press_paste, 294);
        sparseIntArray.put(C10651R.layout.popup_magnifier, f53046I4);
        sparseIntArray.put(C10651R.layout.popup_margin_size, 296);
        sparseIntArray.put(C10651R.layout.popup_margin_style, 297);
        sparseIntArray.put(C10651R.layout.popup_margin_template_space, f53067L4);
        sparseIntArray.put(C10651R.layout.popup_mark_pen, 299);
        sparseIntArray.put(C10651R.layout.popup_note_auto_lock_interval, 300);
        sparseIntArray.put(C10651R.layout.popup_note_document_more_settings, 301);
        sparseIntArray.put(C10651R.layout.popup_note_list_dust_bin_op, 302);
        sparseIntArray.put(C10651R.layout.popup_note_list_more_operate, 303);
        sparseIntArray.put(C10651R.layout.popup_note_list_op, 304);
        sparseIntArray.put(C10651R.layout.popup_note_list_sort, 305);
        sparseIntArray.put(C10651R.layout.popup_note_mode, 306);
        sparseIntArray.put(C10651R.layout.popup_note_overview_options, 307);
        sparseIntArray.put(C10651R.layout.popup_page_num_float_panel, 308);
        sparseIntArray.put(C10651R.layout.popup_page_recycle_bin, 309);
        sparseIntArray.put(C10651R.layout.popup_path_op, 310);
        sparseIntArray.put(C10651R.layout.popup_pen_create, 311);
        sparseIntArray.put(C10651R.layout.popup_pen_list, 312);
        sparseIntArray.put(C10651R.layout.popup_pen_size, 313);
        sparseIntArray.put(C10651R.layout.popup_pencil, 314);
        sparseIntArray.put(C10651R.layout.popup_quota_not_enough, 315);
        sparseIntArray.put(C10651R.layout.popup_quote_menu, 316);
        sparseIntArray.put(C10651R.layout.popup_release_note, 317);
        sparseIntArray.put(C10651R.layout.popup_scale_collection, 318);
        sparseIntArray.put(C10651R.layout.popup_seek_bar, 319);
        sparseIntArray.put(C10651R.layout.popup_select_file_pages, 320);
        sparseIntArray.put(C10651R.layout.popup_select_move_to_layer, 321);
        sparseIntArray.put(C10651R.layout.popup_select_note_pages, 322);
        sparseIntArray.put(C10651R.layout.popup_shape_link, 323);
        sparseIntArray.put(C10651R.layout.popup_shape_link_edit, 324);
        sparseIntArray.put(C10651R.layout.popup_shape_tag, 325);
        sparseIntArray.put(C10651R.layout.popup_shape_toolbar_custom, 326);
        sparseIntArray.put(C10651R.layout.popup_shortcut_bar_custom, 327);
        sparseIntArray.put(C10651R.layout.popup_shortcut_bar_more_functions, 328);
        sparseIntArray.put(C10651R.layout.popup_soft_paint_pen, f53277q5);
        sparseIntArray.put(C10651R.layout.popup_stickers, 330);
        sparseIntArray.put(C10651R.layout.popup_switch_note_settings, f53291s5);
        sparseIntArray.put(C10651R.layout.popup_sync_error, 332);
        sparseIntArray.put(C10651R.layout.popup_tab_managment, 333);
        sparseIntArray.put(C10651R.layout.popup_tab_note_options, 334);
        sparseIntArray.put(C10651R.layout.popup_tag_op, f53319w5);
        sparseIntArray.put(C10651R.layout.popup_tags_list, 336);
        sparseIntArray.put(C10651R.layout.popup_tape_pen, 337);
        sparseIntArray.put(C10651R.layout.popup_template_edit, 338);
        sparseIntArray.put(C10651R.layout.popup_template_space_args, 339);
        sparseIntArray.put(C10651R.layout.popup_text_font_list, 340);
        sparseIntArray.put(C10651R.layout.popup_text_size_space, 341);
        sparseIntArray.put(C10651R.layout.popup_textinput_selection_menu, 342);
        sparseIntArray.put(C10651R.layout.popup_theme, f53019E5);
        sparseIntArray.put(C10651R.layout.popup_tips_guide, f53026F5);
        sparseIntArray.put(C10651R.layout.popup_universal_shape, 345);
        sparseIntArray.put(C10651R.layout.popup_upgrade_image, 346);
        sparseIntArray.put(C10651R.layout.popup_upgrade_mix, 347);
        sparseIntArray.put(C10651R.layout.popup_upgrade_text, f53054J5);
        sparseIntArray.put(C10651R.layout.popup_web_view, f53061K5);
        sparseIntArray.put(C10651R.layout.popup_write_pen_group, f53068L5);
        sparseIntArray.put(C10651R.layout.restore_error_item, 351);
        sparseIntArray.put(C10651R.layout.split_screen_layout, f53082N5);
        sparseIntArray.put(C10651R.layout.tags_linearlayout_child_layout, f53089O5);
        sparseIntArray.put(C10651R.layout.view_guide, f53096P5);
        sparseIntArray.put(C10651R.layout.view_tool_bar_container, f53103Q5);
    }

    /* renamed from: a */
    public final ViewDataBinding m41690a(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 1:
                if ("layout/activity_html_window_0".equals(obj)) {
                    return new ActivityHtmlWindowBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_html_window is invalid. Received: " + obj);
            case 2:
                if ("layout/activity_note_detail_0".equals(obj)) {
                    return new ActivityNoteDetailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_note_detail is invalid. Received: " + obj);
            case 3:
                if ("layout/activity_splash_0".equals(obj)) {
                    return new ActivitySplashBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_splash is invalid. Received: " + obj);
            case 4:
                if ("layout/backup_error_item_0".equals(obj)) {
                    return new BackupErrorItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for backup_error_item is invalid. Received: " + obj);
            case 5:
                if ("layout/change_note_template_title_container_0".equals(obj)) {
                    return new ChangeNoteTemplateTitleContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for change_note_template_title_container is invalid. Received: " + obj);
            case 6:
                if ("layout/counter_time_list_view_0".equals(obj)) {
                    return new CounterTimeListViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for counter_time_list_view is invalid. Received: " + obj);
            case 7:
                if ("layout/create_note_template_title_container_0".equals(obj)) {
                    return new CreateNoteTemplateTitleContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for create_note_template_title_container is invalid. Received: " + obj);
            case 8:
                if ("layout/custom_scroll_bar_recycle_view_0".equals(obj)) {
                    return new CustomScrollBarRecycleViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for custom_scroll_bar_recycle_view is invalid. Received: " + obj);
            case 9:
                if ("layout/dialog_add_sibling_doc_toc_entry_0".equals(obj)) {
                    return new DialogAddSiblingDocTocEntryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_add_sibling_doc_toc_entry is invalid. Received: " + obj);
            case 10:
                if ("layout/dialog_add_to_toc_0".equals(obj)) {
                    return new DialogAddToTocBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_add_to_toc is invalid. Received: " + obj);
            case 11:
                if ("layout/dialog_area_code_0".equals(obj)) {
                    return new DialogAreaCodeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_area_code is invalid. Received: " + obj);
            case 12:
                if ("layout/dialog_backup_process_0".equals(obj)) {
                    return new DialogBackupProcessBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_backup_process is invalid. Received: " + obj);
            case 13:
                if ("layout/dialog_charge_feature_0".equals(obj)) {
                    return new DialogChargeFeatureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_charge_feature is invalid. Received: " + obj);
            case 14:
                if ("layout/dialog_common_progress_0".equals(obj)) {
                    return new DialogCommonProgressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_common_progress is invalid. Received: " + obj);
            case 15:
                if ("layout/dialog_config_note_password_0".equals(obj)) {
                    return new DialogConfigNotePasswordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_config_note_password is invalid. Received: " + obj);
            case 16:
                if ("layout/dialog_content_input_0".equals(obj)) {
                    return new DialogContentInputBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_content_input is invalid. Received: " + obj);
            case 17:
                if ("layout/dialog_convert_file_progress_0".equals(obj)) {
                    return new DialogConvertFileProgressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_convert_file_progress is invalid. Received: " + obj);
            case 18:
                if ("layout/dialog_convert_to_text_0".equals(obj)) {
                    return new DialogConvertToTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_convert_to_text is invalid. Received: " + obj);
            case 19:
                if ("layout/dialog_create_folder_0".equals(obj)) {
                    return new DialogCreateFolderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_create_folder is invalid. Received: " + obj);
            case 20:
                if ("layout/dialog_create_sub_folder_0".equals(obj)) {
                    return new DialogCreateSubFolderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_create_sub_folder is invalid. Received: " + obj);
            case 21:
                if ("layout/dialog_create_sub_tag_0".equals(obj)) {
                    return new DialogCreateSubTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_create_sub_tag is invalid. Received: " + obj);
            case 22:
                if ("layout/dialog_create_tag_0".equals(obj)) {
                    return new DialogCreateTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_create_tag is invalid. Received: " + obj);
            case 23:
                if ("layout/dialog_drive_recovery_0".equals(obj)) {
                    return new DialogDriveRecoveryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_drive_recovery is invalid. Received: " + obj);
            case 24:
                if ("layout/dialog_edit_folder_0".equals(obj)) {
                    return new DialogEditFolderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_edit_folder is invalid. Received: " + obj);
            case 25:
                if ("layout/dialog_edit_list_note_0".equals(obj)) {
                    return new DialogEditListNoteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_edit_list_note is invalid. Received: " + obj);
            case 26:
                if ("layout/dialog_edit_tag_0".equals(obj)) {
                    return new DialogEditTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_edit_tag is invalid. Received: " + obj);
            case 27:
                if ("layout/dialog_edit_tag_for_note_0".equals(obj)) {
                    return new DialogEditTagForNoteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_edit_tag_for_note is invalid. Received: " + obj);
            case 28:
                if ("layout/dialog_image_cropper_0".equals(obj)) {
                    return new DialogImageCropperBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_image_cropper is invalid. Received: " + obj);
            case 29:
                if ("layout/dialog_import_backup_process_0".equals(obj)) {
                    return new DialogImportBackupProcessBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_import_backup_process is invalid. Received: " + obj);
            case 30:
                if ("layout/dialog_import_file_progress_0".equals(obj)) {
                    return new DialogImportFileProgressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_import_file_progress is invalid. Received: " + obj);
            case 31:
                if ("layout/dialog_import_success_0".equals(obj)) {
                    return new DialogImportSuccessBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_import_success is invalid. Received: " + obj);
            case 32:
                if ("layout/dialog_input_password_0".equals(obj)) {
                    return new DialogInputPasswordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_input_password is invalid. Received: " + obj);
            case 33:
                if ("layout/dialog_loading_0".equals(obj)) {
                    return new DialogLoadingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_loading is invalid. Received: " + obj);
            case 34:
                if ("layout/dialog_local_backup_0".equals(obj)) {
                    return new DialogLocalBackupBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_local_backup is invalid. Received: " + obj);
            case 35:
                if ("layout/dialog_local_recovery_0".equals(obj)) {
                    return new DialogLocalRecoveryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_local_recovery is invalid. Received: " + obj);
            case 36:
                if ("layout/dialog_local_restore_file_0".equals(obj)) {
                    return new DialogLocalRestoreFileBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_local_restore_file is invalid. Received: " + obj);
            case 37:
                if ("layout/dialog_login_account_list_0".equals(obj)) {
                    return new DialogLoginAccountListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_login_account_list is invalid. Received: " + obj);
            case 38:
                if ("layout/dialog_login_loading_0".equals(obj)) {
                    return new DialogLoginLoadingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_login_loading is invalid. Received: " + obj);
            case 39:
                if ("layout/dialog_login_policy_0".equals(obj)) {
                    return new DialogLoginPolicyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_login_policy is invalid. Received: " + obj);
            case 40:
                if ("layout/dialog_magnifier_feature_0".equals(obj)) {
                    return new DialogMagnifierFeatureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_magnifier_feature is invalid. Received: " + obj);
            case 41:
                if ("layout/dialog_manage_folder_0".equals(obj)) {
                    return new DialogManageFolderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_manage_folder is invalid. Received: " + obj);
            case 42:
                if ("layout/dialog_manage_tag_0".equals(obj)) {
                    return new DialogManageTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_manage_tag is invalid. Received: " + obj);
            case 43:
                if ("layout/dialog_network_backup_0".equals(obj)) {
                    return new DialogNetworkBackupBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_network_backup is invalid. Received: " + obj);
            case 44:
                if ("layout/dialog_note_auth_password_0".equals(obj)) {
                    return new DialogNoteAuthPasswordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_note_auth_password is invalid. Received: " + obj);
            case 45:
                if ("layout/dialog_note_count_register_guide_0".equals(obj)) {
                    return new DialogNoteCountRegisterGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_note_count_register_guide is invalid. Received: " + obj);
            case 46:
                if ("layout/dialog_note_export_0".equals(obj)) {
                    return new DialogNoteExportBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_note_export is invalid. Received: " + obj);
            case 47:
                if ("layout/dialog_ocr_text_convert_0".equals(obj)) {
                    return new DialogOcrTextConvertBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_ocr_text_convert is invalid. Received: " + obj);
            case 48:
                if ("layout/dialog_page_margin_adjust_0".equals(obj)) {
                    return new DialogPageMarginAdjustBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_page_margin_adjust is invalid. Received: " + obj);
            case 49:
                if ("layout/dialog_parse_note_progress_0".equals(obj)) {
                    return new DialogParseNoteProgressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_parse_note_progress is invalid. Received: " + obj);
            case 50:
                if ("layout/dialog_policy_0".equals(obj)) {
                    return new DialogPolicyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_policy is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    /* renamed from: b */
    public final ViewDataBinding m41691b(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 51:
                if ("layout/dialog_progress_0".equals(obj)) {
                    return new DialogProgressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_progress is invalid. Received: " + obj);
            case 52:
                if ("layout/dialog_security_verification_0".equals(obj)) {
                    return new DialogSecurityVerificationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_security_verification is invalid. Received: " + obj);
            case 53:
                if ("layout/dialog_select_folder_0".equals(obj)) {
                    return new DialogSelectFolderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_select_folder is invalid. Received: " + obj);
            case 54:
                if ("layout/dialog_select_import_folder_location_0".equals(obj)) {
                    return new DialogSelectImportFolderLocationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_select_import_folder_location is invalid. Received: " + obj);
            case 55:
                if ("layout/dialog_select_import_location_0".equals(obj)) {
                    return new DialogSelectImportLocationBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_select_import_location is invalid. Received: " + obj);
            case 56:
                if ("layout/dialog_select_import_tag_0".equals(obj)) {
                    return new DialogSelectImportTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_select_import_tag is invalid. Received: " + obj);
            case 57:
                if ("layout/dialog_select_tag_0".equals(obj)) {
                    return new DialogSelectTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_select_tag is invalid. Received: " + obj);
            case 58:
                if ("layout/dialog_settings_drive_0".equals(obj)) {
                    return new DialogSettingsDriveBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_settings_drive is invalid. Received: " + obj);
            case 59:
                if ("layout/dialog_splash_policy_0".equals(obj)) {
                    return new DialogSplashPolicyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_splash_policy is invalid. Received: " + obj);
            case 60:
                if ("layout/dialog_text_font_import_0".equals(obj)) {
                    return new DialogTextFontImportBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_text_font_import is invalid. Received: " + obj);
            case 61:
                if ("layout/dialog_update_toc_entry_title_0".equals(obj)) {
                    return new DialogUpdateTocEntryTitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_update_toc_entry_title is invalid. Received: " + obj);
            case 62:
                if ("layout/dialog_view_image_0".equals(obj)) {
                    return new DialogViewImageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_view_image is invalid. Received: " + obj);
            case 63:
                if ("layout/dialog_wechat_login_0".equals(obj)) {
                    return new DialogWechatLoginBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for dialog_wechat_login is invalid. Received: " + obj);
            case 64:
                if ("layout/drag_bottom_layout_0".equals(obj)) {
                    return new DragBottomLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for drag_bottom_layout is invalid. Received: " + obj);
            case 65:
                if ("layout/drag_right_layout_0".equals(obj)) {
                    return new DragRightLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for drag_right_layout is invalid. Received: " + obj);
            case 66:
                if ("layout/editor_view_drag_layout_0".equals(obj)) {
                    return new EditorViewDragLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for editor_view_drag_layout is invalid. Received: " + obj);
            case 67:
                if ("layout/editor_view_lock_layout_0".equals(obj)) {
                    return new EditorViewLockLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for editor_view_lock_layout is invalid. Received: " + obj);
            case 68:
                if ("layout/export_error_item_0".equals(obj)) {
                    return new ExportErrorItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for export_error_item is invalid. Received: " + obj);
            case 69:
                if ("layout/fragment_account_center_0".equals(obj)) {
                    return new FragmentAccountCenterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_account_center is invalid. Received: " + obj);
            case 70:
                if ("layout/fragment_bind_email_0".equals(obj)) {
                    return new FragmentBindEmailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_bind_email is invalid. Received: " + obj);
            case 71:
                if ("layout/fragment_bind_phone_0".equals(obj)) {
                    return new FragmentBindPhoneBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_bind_phone is invalid. Received: " + obj);
            case 72:
                if ("layout/fragment_container_0".equals(obj)) {
                    return new FragmentContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_container is invalid. Received: " + obj);
            case 73:
                if ("layout/fragment_count_down_0".equals(obj)) {
                    return new FragmentCountDownBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_count_down is invalid. Received: " + obj);
            case 74:
                if ("layout/fragment_count_up_0".equals(obj)) {
                    return new FragmentCountUpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_count_up is invalid. Received: " + obj);
            case 75:
                if ("layout/fragment_counter_alarm_setting_0".equals(obj)) {
                    return new FragmentCounterAlarmSettingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_counter_alarm_setting is invalid. Received: " + obj);
            case 76:
                if ("layout/fragment_counter_history_0".equals(obj)) {
                    return new FragmentCounterHistoryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_counter_history is invalid. Received: " + obj);
            case 77:
                if ("layout/fragment_counter_setting_home_0".equals(obj)) {
                    return new FragmentCounterSettingHomeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_counter_setting_home is invalid. Received: " + obj);
            case 78:
                if ("layout/fragment_data_repository_0".equals(obj)) {
                    return new FragmentDataRepositoryBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_data_repository is invalid. Received: " + obj);
            case 79:
                if ("layout/fragment_doc_bookmark_0".equals(obj)) {
                    return new FragmentDocBookmarkBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_doc_bookmark is invalid. Received: " + obj);
            case 80:
                if ("layout/fragment_doc_excerpt_0".equals(obj)) {
                    return new FragmentDocExcerptBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_doc_excerpt is invalid. Received: " + obj);
            case 81:
                if ("layout/fragment_doc_overview_0".equals(obj)) {
                    return new FragmentDocOverviewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_doc_overview is invalid. Received: " + obj);
            case 82:
                if ("layout/fragment_doc_toc_0".equals(obj)) {
                    return new FragmentDocTocBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_doc_toc is invalid. Received: " + obj);
            case 83:
                if ("layout/fragment_draft_doc_overview_0".equals(obj)) {
                    return new FragmentDraftDocOverviewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_draft_doc_overview is invalid. Received: " + obj);
            case 84:
                if ("layout/fragment_edit_counter_setting_0".equals(obj)) {
                    return new FragmentEditCounterSettingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_edit_counter_setting is invalid. Received: " + obj);
            case 85:
                if ("layout/fragment_edit_multiple_count_down_0".equals(obj)) {
                    return new FragmentEditMultipleCountDownBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_edit_multiple_count_down is invalid. Received: " + obj);
            case 86:
                if ("layout/fragment_edit_normal_count_down_0".equals(obj)) {
                    return new FragmentEditNormalCountDownBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_edit_normal_count_down is invalid. Received: " + obj);
            case 87:
                if ("layout/fragment_email_verify_0".equals(obj)) {
                    return new FragmentEmailVerifyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_email_verify is invalid. Received: " + obj);
            case 88:
                if ("layout/fragment_export_specified_pages_0".equals(obj)) {
                    return new FragmentExportSpecifiedPagesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_export_specified_pages is invalid. Received: " + obj);
            case 89:
                if ("layout/fragment_image_crop_0".equals(obj)) {
                    return new FragmentImageCropBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_image_crop is invalid. Received: " + obj);
            case 90:
                if ("layout/fragment_log_off_agreement_0".equals(obj)) {
                    return new FragmentLogOffAgreementBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_log_off_agreement is invalid. Received: " + obj);
            case 91:
                if ("layout/fragment_login_0".equals(obj)) {
                    return new FragmentLoginBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_login is invalid. Received: " + obj);
            case 92:
                if ("layout/fragment_logoff_by_email_0".equals(obj)) {
                    return new FragmentLogoffByEmailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_logoff_by_email is invalid. Received: " + obj);
            case 93:
                if ("layout/fragment_logoff_by_phone_0".equals(obj)) {
                    return new FragmentLogoffByPhoneBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_logoff_by_phone is invalid. Received: " + obj);
            case 94:
                if ("layout/fragment_material_template_0".equals(obj)) {
                    return new FragmentMaterialTemplateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_material_template is invalid. Received: " + obj);
            case 95:
                if ("layout/fragment_message_center_0".equals(obj)) {
                    return new FragmentMessageCenterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_message_center is invalid. Received: " + obj);
            case 96:
                if ("layout/fragment_mixed_verify_0".equals(obj)) {
                    return new FragmentMixedVerifyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_mixed_verify is invalid. Received: " + obj);
            case 97:
                if ("layout/fragment_my_count_down_task_0".equals(obj)) {
                    return new FragmentMyCountDownTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_my_count_down_task is invalid. Received: " + obj);
            case 98:
                if ("layout/fragment_note_detail_0".equals(obj)) {
                    return new FragmentNoteDetailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_detail is invalid. Received: " + obj);
            case 99:
                if ("layout/fragment_note_folder_root_0".equals(obj)) {
                    return new FragmentNoteFolderRootBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_folder_root is invalid. Received: " + obj);
            case 100:
                if ("layout/fragment_note_list_0".equals(obj)) {
                    return new FragmentNoteListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_list is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    /* renamed from: c */
    public final ViewDataBinding m41692c(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 101:
                if ("layout/fragment_note_list_container_0".equals(obj)) {
                    return new FragmentNoteListContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_list_container is invalid. Received: " + obj);
            case 102:
                if ("layout/fragment_note_list_drawer_function_0".equals(obj)) {
                    return new FragmentNoteListDrawerFunctionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_list_drawer_function is invalid. Received: " + obj);
            case 103:
                if ("layout/fragment_note_list_function_0".equals(obj)) {
                    return new FragmentNoteListFunctionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_list_function is invalid. Received: " + obj);
            case 104:
                if ("layout/fragment_note_list_view_page_0".equals(obj)) {
                    return new FragmentNoteListViewPageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_list_view_page is invalid. Received: " + obj);
            case 105:
                if ("layout/fragment_note_overview_0".equals(obj)) {
                    return new FragmentNoteOverviewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_overview is invalid. Received: " + obj);
            case 106:
                if ("layout/fragment_note_sidebar_0".equals(obj)) {
                    return new FragmentNoteSidebarBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_sidebar is invalid. Received: " + obj);
            case 107:
                if ("layout/fragment_note_top_container_0".equals(obj)) {
                    return new FragmentNoteTopContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_note_top_container is invalid. Received: " + obj);
            case 108:
                if ("layout/fragment_password_reset_0".equals(obj)) {
                    return new FragmentPasswordResetBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_password_reset is invalid. Received: " + obj);
            case 109:
                if ("layout/fragment_phone_verify_0".equals(obj)) {
                    return new FragmentPhoneVerifyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_phone_verify is invalid. Received: " + obj);
            case 110:
                if ("layout/fragment_recent_login_0".equals(obj)) {
                    return new FragmentRecentLoginBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_recent_login is invalid. Received: " + obj);
            case 111:
                if ("layout/fragment_search_note_0".equals(obj)) {
                    return new FragmentSearchNoteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_search_note is invalid. Received: " + obj);
            case 112:
                if ("layout/fragment_settings_ai_0".equals(obj)) {
                    return new FragmentSettingsAiBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_ai is invalid. Received: " + obj);
            case 113:
                if ("layout/fragment_settings_cloud_0".equals(obj)) {
                    return new FragmentSettingsCloudBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_cloud is invalid. Received: " + obj);
            case 114:
                if ("layout/fragment_settings_cloud_back_up_0".equals(obj)) {
                    return new FragmentSettingsCloudBackUpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_cloud_back_up is invalid. Received: " + obj);
            case 115:
                if ("layout/fragment_settings_detail_main_0".equals(obj)) {
                    return new FragmentSettingsDetailMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_detail_main is invalid. Received: " + obj);
            case 116:
                if ("layout/fragment_settings_doc_0".equals(obj)) {
                    return new FragmentSettingsDocBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_doc is invalid. Received: " + obj);
            case 117:
                if ("layout/fragment_settings_gesture_0".equals(obj)) {
                    return new FragmentSettingsGestureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_gesture is invalid. Received: " + obj);
            case 118:
                if ("layout/fragment_settings_help_and_feedback_0".equals(obj)) {
                    return new FragmentSettingsHelpAndFeedbackBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_help_and_feedback is invalid. Received: " + obj);
            case 119:
                if ("layout/fragment_settings_local_back_up_0".equals(obj)) {
                    return new FragmentSettingsLocalBackUpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_local_back_up is invalid. Received: " + obj);
            case 120:
                if ("layout/fragment_settings_more_0".equals(obj)) {
                    return new FragmentSettingsMoreBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_more is invalid. Received: " + obj);
            case 121:
                if ("layout/fragment_settings_privacy_0".equals(obj)) {
                    return new FragmentSettingsPrivacyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_privacy is invalid. Received: " + obj);
            case 122:
                if ("layout/fragment_settings_stylus_0".equals(obj)) {
                    return new FragmentSettingsStylusBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_stylus is invalid. Received: " + obj);
            case 123:
                if ("layout/fragment_settings_theme_0".equals(obj)) {
                    return new FragmentSettingsThemeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_theme is invalid. Received: " + obj);
            case 124:
                if ("layout/fragment_settings_tools_0".equals(obj)) {
                    return new FragmentSettingsToolsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_settings_tools is invalid. Received: " + obj);
            case 125:
                if ("layout/fragment_share_resource_0".equals(obj)) {
                    return new FragmentShareResourceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_share_resource is invalid. Received: " + obj);
            case 126:
                if ("layout/fragment_unbind_email_0".equals(obj)) {
                    return new FragmentUnbindEmailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_unbind_email is invalid. Received: " + obj);
            case 127:
                if ("layout/fragment_unbind_phone_0".equals(obj)) {
                    return new FragmentUnbindPhoneBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_unbind_phone is invalid. Received: " + obj);
            case 128:
                if ("layout/fragment_user_center_0".equals(obj)) {
                    return new FragmentUserCenterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_user_center is invalid. Received: " + obj);
            case 129:
                if ("layout/fragment_verify_method_0".equals(obj)) {
                    return new FragmentVerifyMethodBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_verify_method is invalid. Received: " + obj);
            case 130:
                if ("layout/fragment_wechat_verify_0".equals(obj)) {
                    return new FragmentWechatVerifyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_wechat_verify is invalid. Received: " + obj);
            case 131:
                if ("layout/include_art_ink_pen_popup_params_0".equals(obj)) {
                    return new IncludeArtInkPenPopupParamsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_art_ink_pen_popup_params is invalid. Received: " + obj);
            case 132:
                if ("layout/include_ballpoint_pen_popup_params_0".equals(obj)) {
                    return new IncludeBallpointPenPopupParamsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_ballpoint_pen_popup_params is invalid. Received: " + obj);
            case 133:
                if ("layout/include_icp_container_0".equals(obj)) {
                    return new IncludeIcpContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_icp_container is invalid. Received: " + obj);
            case 134:
                if ("layout/include_ink_pen_popup_params_0".equals(obj)) {
                    return new IncludeInkPenPopupParamsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_ink_pen_popup_params is invalid. Received: " + obj);
            case 135:
                if ("layout/include_pencil_popup_params_0".equals(obj)) {
                    return new IncludePencilPopupParamsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_pencil_popup_params is invalid. Received: " + obj);
            case 136:
                if ("layout/include_popup_lasso_container_0".equals(obj)) {
                    return new IncludePopupLassoContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_popup_lasso_container is invalid. Received: " + obj);
            case 137:
                if ("layout/include_soft_paint_pen_popup_params_0".equals(obj)) {
                    return new IncludeSoftPaintPenPopupParamsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for include_soft_paint_pen_popup_params is invalid. Received: " + obj);
            case 138:
                if ("layout/item_area_code_0".equals(obj)) {
                    return new ItemAreaCodeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_area_code is invalid. Received: " + obj);
            case 139:
                if ("layout/item_audio_0".equals(obj)) {
                    return new ItemAudioBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_audio is invalid. Received: " + obj);
            case 140:
                if ("layout/item_backup_path_0".equals(obj)) {
                    return new ItemBackupPathBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_backup_path is invalid. Received: " + obj);
            case 141:
                if ("layout/item_candidate_shortcut_0".equals(obj)) {
                    return new ItemCandidateShortcutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_candidate_shortcut is invalid. Received: " + obj);
            case 142:
                if ("layout/item_charge_feature_0".equals(obj)) {
                    return new ItemChargeFeatureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_charge_feature is invalid. Received: " + obj);
            case 143:
                if ("layout/item_color_set_0".equals(obj)) {
                    return new ItemColorSetBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_color_set is invalid. Received: " + obj);
            case 144:
                if ("layout/item_context_menu_0".equals(obj)) {
                    return new ItemContextMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_context_menu is invalid. Received: " + obj);
            case 145:
                if ("layout/item_count_down_multiple_time_list_0".equals(obj)) {
                    return new ItemCountDownMultipleTimeListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_count_down_multiple_time_list is invalid. Received: " + obj);
            case 146:
                if ("layout/item_count_down_record_0".equals(obj)) {
                    return new ItemCountDownRecordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_count_down_record is invalid. Received: " + obj);
            case 147:
                if ("layout/item_count_up_history_time_list_0".equals(obj)) {
                    return new ItemCountUpHistoryTimeListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_count_up_history_time_list is invalid. Received: " + obj);
            case 148:
                if ("layout/item_count_up_popup_time_list_0".equals(obj)) {
                    return new ItemCountUpPopupTimeListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_count_up_popup_time_list is invalid. Received: " + obj);
            case 149:
                if ("layout/item_count_up_record_0".equals(obj)) {
                    return new ItemCountUpRecordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_count_up_record is invalid. Received: " + obj);
            case 150:
                if ("layout/item_custom_shortcut_bar_0".equals(obj)) {
                    return new ItemCustomShortcutBarBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_custom_shortcut_bar is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(14);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.onegravity.rteditor.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.auth.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.cloudstorage.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.data.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.device.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.hwr.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.imagepicker.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.ocr.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.pay.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.textbox.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.p039ui.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk.uicommon.DataBinderMapperImpl());
        arrayList.add(new com.onyx.android.sdk_huawei.DataBinderMapperImpl());
        return arrayList;
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return C10632a.f53341a.get(i);
    }

    /* renamed from: d */
    public final ViewDataBinding m41693d(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 151:
                if ("layout/item_custom_shortcut_bar_title_0".equals(obj)) {
                    return new ItemCustomShortcutBarTitleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_custom_shortcut_bar_title is invalid. Received: " + obj);
            case 152:
                if ("layout/item_doc_bookmark_0".equals(obj)) {
                    return new ItemDocBookmarkBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_doc_bookmark is invalid. Received: " + obj);
            case 153:
                if ("layout/item_doc_draft_overview_page_0".equals(obj)) {
                    return new ItemDocDraftOverviewPageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_doc_draft_overview_page is invalid. Received: " + obj);
            case 154:
                if ("layout/item_doc_excerpt_0".equals(obj)) {
                    return new ItemDocExcerptBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_doc_excerpt is invalid. Received: " + obj);
            case 155:
                if ("layout/item_doc_overview_page_0".equals(obj)) {
                    return new ItemDocOverviewPageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_doc_overview_page is invalid. Received: " + obj);
            case 156:
                if ("layout/item_doc_toc_0".equals(obj)) {
                    return new ItemDocTocBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_doc_toc is invalid. Received: " + obj);
            case 157:
                if ("layout/item_excerpt_quote_0".equals(obj)) {
                    return new ItemExcerptQuoteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_excerpt_quote is invalid. Received: " + obj);
            case 158:
                if ("layout/item_feature_resource_0".equals(obj)) {
                    return new ItemFeatureResourceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_feature_resource is invalid. Received: " + obj);
            case 159:
                if ("layout/item_feedback_picture_layout_0".equals(obj)) {
                    return new ItemFeedbackPictureLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_feedback_picture_layout is invalid. Received: " + obj);
            case 160:
                if ("layout/item_feedback_type_layout_0".equals(obj)) {
                    return new ItemFeedbackTypeLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_feedback_type_layout is invalid. Received: " + obj);
            case 161:
                if ("layout/item_font_import_0".equals(obj)) {
                    return new ItemFontImportBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_font_import is invalid. Received: " + obj);
            case 162:
                if ("layout/item_font_show_0".equals(obj)) {
                    return new ItemFontShowBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_font_show is invalid. Received: " + obj);
            case 163:
                if ("layout/item_hwr_resource_0".equals(obj)) {
                    return new ItemHwrResourceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_hwr_resource is invalid. Received: " + obj);
            case 164:
                if ("layout/item_image_picker_0".equals(obj)) {
                    return new ItemImagePickerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_image_picker is invalid. Received: " + obj);
            case 165:
                if ("layout/item_ink_font_0".equals(obj)) {
                    return new ItemInkFontBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_ink_font is invalid. Received: " + obj);
            case 166:
                if ("layout/item_lasso_element_0".equals(obj)) {
                    return new ItemLassoElementBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_lasso_element is invalid. Received: " + obj);
            case 167:
                if ("layout/item_layer_0".equals(obj)) {
                    return new ItemLayerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_layer is invalid. Received: " + obj);
            case 168:
                if ("layout/item_list_import_files_0".equals(obj)) {
                    return new ItemListImportFilesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_list_import_files is invalid. Received: " + obj);
            case 169:
                if ("layout/item_media_store_image_0".equals(obj)) {
                    return new ItemMediaStoreImageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_media_store_image is invalid. Received: " + obj);
            case 170:
                if ("layout/item_my_count_down_task_0".equals(obj)) {
                    return new ItemMyCountDownTaskBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_my_count_down_task is invalid. Received: " + obj);
            case 171:
                if ("layout/item_my_count_down_task_time_list_0".equals(obj)) {
                    return new ItemMyCountDownTaskTimeListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_my_count_down_task_time_list is invalid. Received: " + obj);
            case 172:
                if ("layout/item_note_overview_0".equals(obj)) {
                    return new ItemNoteOverviewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_note_overview is invalid. Received: " + obj);
            case 173:
                if ("layout/item_note_page_thumbnail_0".equals(obj)) {
                    return new ItemNotePageThumbnailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_note_page_thumbnail is invalid. Received: " + obj);
            case 174:
                if ("layout/item_note_removed_page_thumbnail_0".equals(obj)) {
                    return new ItemNoteRemovedPageThumbnailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_note_removed_page_thumbnail is invalid. Received: " + obj);
            case 175:
                if ("layout/item_note_tab_0".equals(obj)) {
                    return new ItemNoteTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_note_tab is invalid. Received: " + obj);
            case 176:
                if ("layout/item_note_tab_drag_0".equals(obj)) {
                    return new ItemNoteTabDragBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_note_tab_drag is invalid. Received: " + obj);
            case 177:
                if ("layout/item_note_tab_management_0".equals(obj)) {
                    return new ItemNoteTabManagementBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_note_tab_management is invalid. Received: " + obj);
            case 178:
                if ("layout/item_option_select_0".equals(obj)) {
                    return new ItemOptionSelectBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_option_select is invalid. Received: " + obj);
            case 179:
                if ("layout/item_page_margin_size_0".equals(obj)) {
                    return new ItemPageMarginSizeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_page_margin_size is invalid. Received: " + obj);
            case 180:
                if ("layout/item_page_margin_template_0".equals(obj)) {
                    return new ItemPageMarginTemplateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_page_margin_template is invalid. Received: " + obj);
            case 181:
                if ("layout/item_page_margin_template_style_0".equals(obj)) {
                    return new ItemPageMarginTemplateStyleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_page_margin_template_style is invalid. Received: " + obj);
            case 182:
                if ("layout/item_pen_box_0".equals(obj)) {
                    return new ItemPenBoxBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_pen_box is invalid. Received: " + obj);
            case 183:
                if ("layout/item_pen_box_pen_0".equals(obj)) {
                    return new ItemPenBoxPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_pen_box_pen is invalid. Received: " + obj);
            case 184:
                if ("layout/item_pen_box_pen_horizontal_0".equals(obj)) {
                    return new ItemPenBoxPenHorizontalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_pen_box_pen_horizontal is invalid. Received: " + obj);
            case 185:
                if ("layout/item_popup_pen_box_pen_0".equals(obj)) {
                    return new ItemPopupPenBoxPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_popup_pen_box_pen is invalid. Received: " + obj);
            case 186:
                if ("layout/item_scale_0".equals(obj)) {
                    return new ItemScaleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_scale is invalid. Received: " + obj);
            case 187:
                if ("layout/item_search_filter_0".equals(obj)) {
                    return new ItemSearchFilterBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_search_filter is invalid. Received: " + obj);
            case 188:
                if ("layout/item_select_move_to_layer_0".equals(obj)) {
                    return new ItemSelectMoveToLayerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_select_move_to_layer is invalid. Received: " + obj);
            case 189:
                if ("layout/item_selection_menu_0".equals(obj)) {
                    return new ItemSelectionMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_selection_menu is invalid. Received: " + obj);
            case 190:
                if ("layout/item_selector_option_0".equals(obj)) {
                    return new ItemSelectorOptionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_selector_option is invalid. Received: " + obj);
            case 191:
                if ("layout/item_share_resource_0".equals(obj)) {
                    return new ItemShareResourceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_share_resource is invalid. Received: " + obj);
            case 192:
                if ("layout/item_shortcut_bar_more_function_audio_0".equals(obj)) {
                    return new ItemShortcutBarMoreFunctionAudioBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shortcut_bar_more_function_audio is invalid. Received: " + obj);
            case 193:
                if ("layout/item_shortcut_bar_more_function_audio_set_0".equals(obj)) {
                    return new ItemShortcutBarMoreFunctionAudioSetBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shortcut_bar_more_function_audio_set is invalid. Received: " + obj);
            case 194:
                if ("layout/item_shortcut_bar_more_function_normal_0".equals(obj)) {
                    return new ItemShortcutBarMoreFunctionNormalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_shortcut_bar_more_function_normal is invalid. Received: " + obj);
            case 195:
                if ("layout/item_sticker_0".equals(obj)) {
                    return new ItemStickerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_sticker is invalid. Received: " + obj);
            case 196:
                if ("layout/item_sticker_image_0".equals(obj)) {
                    return new ItemStickerImageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_sticker_image is invalid. Received: " + obj);
            case 197:
                if ("layout/item_tape_fill_style_0".equals(obj)) {
                    return new ItemTapeFillStyleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_tape_fill_style is invalid. Received: " + obj);
            case 198:
                if ("layout/item_text_size_space_0".equals(obj)) {
                    return new ItemTextSizeSpaceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_text_size_space is invalid. Received: " + obj);
            case 199:
                if ("layout/item_theme_0".equals(obj)) {
                    return new ItemThemeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_theme is invalid. Received: " + obj);
            case 200:
                if ("layout/item_theme_header_0".equals(obj)) {
                    return new ItemThemeHeaderBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_theme_header is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    /* renamed from: e */
    public final ViewDataBinding m41694e(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 201:
                if ("layout/item_toolbar_custom_0".equals(obj)) {
                    return new ItemToolbarCustomBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_toolbar_custom is invalid. Received: " + obj);
            case 202:
                if ("layout/item_universal_shape_color_0".equals(obj)) {
                    return new ItemUniversalShapeColorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_universal_shape_color is invalid. Received: " + obj);
            case 203:
                if ("layout/item_universal_shape_type_0".equals(obj)) {
                    return new ItemUniversalShapeTypeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for item_universal_shape_type is invalid. Received: " + obj);
            case 204:
                if ("layout/layout_account_verify_email_0".equals(obj)) {
                    return new LayoutAccountVerifyEmailBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_account_verify_email is invalid. Received: " + obj);
            case 205:
                if ("layout/layout_account_verify_huawei_0".equals(obj)) {
                    return new LayoutAccountVerifyHuaweiBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_account_verify_huawei is invalid. Received: " + obj);
            case 206:
                if ("layout/layout_account_verify_password_0".equals(obj)) {
                    return new LayoutAccountVerifyPasswordBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_account_verify_password is invalid. Received: " + obj);
            case 207:
                if ("layout/layout_account_verify_phone_0".equals(obj)) {
                    return new LayoutAccountVerifyPhoneBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_account_verify_phone is invalid. Received: " + obj);
            case 208:
                if ("layout/layout_account_verify_wechat_0".equals(obj)) {
                    return new LayoutAccountVerifyWechatBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_account_verify_wechat is invalid. Received: " + obj);
            case 209:
                if ("layout/layout_category_title_container_0".equals(obj)) {
                    return new LayoutCategoryTitleContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_category_title_container is invalid. Received: " + obj);
            case 210:
                if ("layout/layout_color_property_0".equals(obj)) {
                    return new LayoutColorPropertyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_color_property is invalid. Received: " + obj);
            case 211:
                if ("layout/layout_color_property_large_0".equals(obj)) {
                    return new LayoutColorPropertyLargeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_color_property_large is invalid. Received: " + obj);
            case 212:
                if ("layout/layout_counter_history_empty_0".equals(obj)) {
                    return new LayoutCounterHistoryEmptyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_counter_history_empty is invalid. Received: " + obj);
            case 213:
                if ("layout/layout_counter_tips_view_0".equals(obj)) {
                    return new LayoutCounterTipsViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_counter_tips_view is invalid. Received: " + obj);
            case 214:
                if ("layout/layout_counter_view_0".equals(obj)) {
                    return new LayoutCounterViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_counter_view is invalid. Received: " + obj);
            case 215:
                if ("layout/layout_custom_shortcuts_view_0".equals(obj)) {
                    return new LayoutCustomShortcutsViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_custom_shortcuts_view is invalid. Received: " + obj);
            case 216:
                if ("layout/layout_doc_search_0".equals(obj)) {
                    return new LayoutDocSearchBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_doc_search is invalid. Received: " + obj);
            case 217:
                if ("layout/layout_email_verify_item_0".equals(obj)) {
                    return new LayoutEmailVerifyItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_email_verify_item is invalid. Received: " + obj);
            case 218:
                if ("layout/layout_eraser_type_params_container_0".equals(obj)) {
                    return new LayoutEraserTypeParamsContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_eraser_type_params_container is invalid. Received: " + obj);
            case 219:
                if ("layout/layout_excerpt_type_params_container_0".equals(obj)) {
                    return new LayoutExcerptTypeParamsContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_excerpt_type_params_container is invalid. Received: " + obj);
            case 220:
                if ("layout/layout_function_tool_0".equals(obj)) {
                    return new LayoutFunctionToolBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_function_tool is invalid. Received: " + obj);
            case 221:
                if ("layout/layout_image_shape_params_container_0".equals(obj)) {
                    return new LayoutImageShapeParamsContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_image_shape_params_container is invalid. Received: " + obj);
            case 222:
                if ("layout/layout_ink_beautify_typeset_0".equals(obj)) {
                    return new LayoutInkBeautifyTypesetBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_ink_beautify_typeset is invalid. Received: " + obj);
            case 223:
                if ("layout/layout_input_text_tool_0".equals(obj)) {
                    return new LayoutInputTextToolBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_input_text_tool is invalid. Received: " + obj);
            case 224:
                if ("layout/layout_item_text_0".equals(obj)) {
                    return new LayoutItemTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_item_text is invalid. Received: " + obj);
            case 225:
                if ("layout/layout_lasso_type_params_container_0".equals(obj)) {
                    return new LayoutLassoTypeParamsContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_lasso_type_params_container is invalid. Received: " + obj);
            case 226:
                if ("layout/layout_magnifier_view_port_0".equals(obj)) {
                    return new LayoutMagnifierViewPortBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_magnifier_view_port is invalid. Received: " + obj);
            case 227:
                if ("layout/layout_note_common_settings_0".equals(obj)) {
                    return new LayoutNoteCommonSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_note_common_settings is invalid. Received: " + obj);
            case 228:
                if ("layout/layout_note_export_settings_0".equals(obj)) {
                    return new LayoutNoteExportSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_note_export_settings is invalid. Received: " + obj);
            case 229:
                if ("layout/layout_note_page_settings_0".equals(obj)) {
                    return new LayoutNotePageSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_note_page_settings is invalid. Received: " + obj);
            case 230:
                if ("layout/layout_note_tab_0".equals(obj)) {
                    return new LayoutNoteTabBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_note_tab is invalid. Received: " + obj);
            case 231:
                if ("layout/layout_note_tag_0".equals(obj)) {
                    return new LayoutNoteTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_note_tag is invalid. Received: " + obj);
            case 232:
                if ("layout/layout_page_indicator_0".equals(obj)) {
                    return new LayoutPageIndicatorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_page_indicator is invalid. Received: " + obj);
            case 233:
                if ("layout/layout_page_num_float_bar_0".equals(obj)) {
                    return new LayoutPageNumFloatBarBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_page_num_float_bar is invalid. Received: " + obj);
            case 234:
                if ("layout/layout_pen_box_0".equals(obj)) {
                    return new LayoutPenBoxBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_pen_box is invalid. Received: " + obj);
            case 235:
                if ("layout/layout_phone_verify_item_0".equals(obj)) {
                    return new LayoutPhoneVerifyItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_phone_verify_item is invalid. Received: " + obj);
            case 236:
                if ("layout/layout_physical_mark_pen_group_0".equals(obj)) {
                    return new LayoutPhysicalMarkPenGroupBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_physical_mark_pen_group is invalid. Received: " + obj);
            case 237:
                if ("layout/layout_physical_shape_group_0".equals(obj)) {
                    return new LayoutPhysicalShapeGroupBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_physical_shape_group is invalid. Received: " + obj);
            case 238:
                if ("layout/layout_ruler_units_0".equals(obj)) {
                    return new LayoutRulerUnitsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_ruler_units is invalid. Received: " + obj);
            case 239:
                if ("layout/layout_scale_indicator_0".equals(obj)) {
                    return new LayoutScaleIndicatorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_scale_indicator is invalid. Received: " + obj);
            case 240:
                if ("layout/layout_screen_capture_0".equals(obj)) {
                    return new LayoutScreenCaptureBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_screen_capture is invalid. Received: " + obj);
            case 241:
                if ("layout/layout_selection_menu_0".equals(obj)) {
                    return new LayoutSelectionMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_selection_menu is invalid. Received: " + obj);
            case f53038H3 /* 242 */:
                if ("layout/layout_selection_menu_paged_0".equals(obj)) {
                    return new LayoutSelectionMenuPagedBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_selection_menu_paged is invalid. Received: " + obj);
            case 243:
                if ("layout/layout_shape_params_container_0".equals(obj)) {
                    return new LayoutShapeParamsContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_shape_params_container is invalid. Received: " + obj);
            case 244:
                if ("layout/layout_shape_tool_auto_0".equals(obj)) {
                    return new LayoutShapeToolAutoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_shape_tool_auto is invalid. Received: " + obj);
            case 245:
                if ("layout/layout_shapes_location_bar_0".equals(obj)) {
                    return new LayoutShapesLocationBarBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_shapes_location_bar is invalid. Received: " + obj);
            case 246:
                if ("layout/layout_sticker_category_main_0".equals(obj)) {
                    return new LayoutStickerCategoryMainBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_sticker_category_main is invalid. Received: " + obj);
            case f53073M3 /* 247 */:
                if ("layout/layout_sticker_category_select_0".equals(obj)) {
                    return new LayoutStickerCategorySelectBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_sticker_category_select is invalid. Received: " + obj);
            case 248:
                if ("layout/layout_sticker_category_sub_0".equals(obj)) {
                    return new LayoutStickerCategorySubBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_sticker_category_sub is invalid. Received: " + obj);
            case 249:
                if ("layout/layout_sticker_params_container_0".equals(obj)) {
                    return new LayoutStickerParamsContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_sticker_params_container is invalid. Received: " + obj);
            case 250:
                if ("layout/layout_stroke_and_color_0".equals(obj)) {
                    return new LayoutStrokeAndColorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_stroke_and_color is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    /* renamed from: f */
    public final ViewDataBinding m41695f(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 251:
                if ("layout/layout_swipe_recycle_view_0".equals(obj)) {
                    return new LayoutSwipeRecycleViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_swipe_recycle_view is invalid. Received: " + obj);
            case 252:
                if ("layout/layout_template_title_orientation_container_0".equals(obj)) {
                    return new LayoutTemplateTitleOrientationContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_template_title_orientation_container is invalid. Received: " + obj);
            case 253:
                if ("layout/layout_time_picker_view_0".equals(obj)) {
                    return new LayoutTimePickerViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_time_picker_view is invalid. Received: " + obj);
            case 254:
                if ("layout/layout_title_edit_text_0".equals(obj)) {
                    return new LayoutTitleEditTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_title_edit_text is invalid. Received: " + obj);
            case 255:
                if ("layout/layout_tool_operation_tip_0".equals(obj)) {
                    return new LayoutToolOperationTipBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_tool_operation_tip is invalid. Received: " + obj);
            case 256:
                if ("layout/layout_user_info_0".equals(obj)) {
                    return new LayoutUserInfoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_user_info is invalid. Received: " + obj);
            case 257:
                if ("layout/layout_wifi_and_mobile_container_0".equals(obj)) {
                    return new LayoutWifiAndMobileContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_wifi_and_mobile_container is invalid. Received: " + obj);
            case 258:
                if ("layout/magnifier_editor_layout_0".equals(obj)) {
                    return new MagnifierEditorLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for magnifier_editor_layout is invalid. Received: " + obj);
            case 259:
                if ("layout/popup_audio_action_0".equals(obj)) {
                    return new PopupAudioActionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_audio_action is invalid. Received: " + obj);
            case f53157Z3 /* 260 */:
                if ("layout/popup_audio_list_0".equals(obj)) {
                    return new PopupAudioListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_audio_list is invalid. Received: " + obj);
            case 261:
                if ("layout/popup_ballpoint_pen_0".equals(obj)) {
                    return new PopupBallpointPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_ballpoint_pen is invalid. Received: " + obj);
            case 262:
                if ("layout/popup_calligraphy_pen_0".equals(obj)) {
                    return new PopupCalligraphyPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_calligraphy_pen is invalid. Received: " + obj);
            case 263:
                if ("layout/popup_context_menu_0".equals(obj)) {
                    return new PopupContextMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_context_menu is invalid. Received: " + obj);
            case 264:
                if ("layout/popup_counter_history_options_0".equals(obj)) {
                    return new PopupCounterHistoryOptionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_counter_history_options is invalid. Received: " + obj);
            case 265:
                if ("layout/popup_counter_more_options_0".equals(obj)) {
                    return new PopupCounterMoreOptionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_counter_more_options is invalid. Received: " + obj);
            case 266:
                if ("layout/popup_counter_setting_0".equals(obj)) {
                    return new PopupCounterSettingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_counter_setting is invalid. Received: " + obj);
            case f53206g4 /* 267 */:
                if ("layout/popup_create_note_0".equals(obj)) {
                    return new PopupCreateNoteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_create_note is invalid. Received: " + obj);
            case f53213h4 /* 268 */:
                if ("layout/popup_custom_cover_0".equals(obj)) {
                    return new PopupCustomCoverBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_custom_cover is invalid. Received: " + obj);
            case 269:
                if ("layout/popup_doc_bookmark_action_0".equals(obj)) {
                    return new PopupDocBookmarkActionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_doc_bookmark_action is invalid. Received: " + obj);
            case 270:
                if ("layout/popup_doc_excerpt_action_0".equals(obj)) {
                    return new PopupDocExcerptActionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_doc_excerpt_action is invalid. Received: " + obj);
            case 271:
                if ("layout/popup_doc_overview_action_0".equals(obj)) {
                    return new PopupDocOverviewActionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_doc_overview_action is invalid. Received: " + obj);
            case 272:
                if ("layout/popup_doc_toc_action_0".equals(obj)) {
                    return new PopupDocTocActionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_doc_toc_action is invalid. Received: " + obj);
            case 273:
                if ("layout/popup_eraser_0".equals(obj)) {
                    return new PopupEraserBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_eraser is invalid. Received: " + obj);
            case 274:
                if ("layout/popup_excerpt_jump_model_list_0".equals(obj)) {
                    return new PopupExcerptJumpModelListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_excerpt_jump_model_list is invalid. Received: " + obj);
            case f53262o4 /* 275 */:
                if ("layout/popup_excerpt_menu_0".equals(obj)) {
                    return new PopupExcerptMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_excerpt_menu is invalid. Received: " + obj);
            case 276:
                if ("layout/popup_excerpt_pen_menu_0".equals(obj)) {
                    return new PopupExcerptPenMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_excerpt_pen_menu is invalid. Received: " + obj);
            case 277:
                if ("layout/popup_folder_op_0".equals(obj)) {
                    return new PopupFolderOpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_folder_op is invalid. Received: " + obj);
            case 278:
                if ("layout/popup_guide_image_0".equals(obj)) {
                    return new PopupGuideImageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_guide_image is invalid. Received: " + obj);
            case 279:
                if ("layout/popup_guide_mix_0".equals(obj)) {
                    return new PopupGuideMixBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_guide_mix is invalid. Received: " + obj);
            case 280:
                if ("layout/popup_guide_text_0".equals(obj)) {
                    return new PopupGuideTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_guide_text is invalid. Received: " + obj);
            case 281:
                if ("layout/popup_image_0".equals(obj)) {
                    return new PopupImageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_image is invalid. Received: " + obj);
            case 282:
                if ("layout/popup_ink_beautify_0".equals(obj)) {
                    return new PopupInkBeautifyBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_ink_beautify is invalid. Received: " + obj);
            case 283:
                if ("layout/popup_ink_beautify_help_0".equals(obj)) {
                    return new PopupInkBeautifyHelpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_ink_beautify_help is invalid. Received: " + obj);
            case 284:
                if ("layout/popup_ink_font_list_0".equals(obj)) {
                    return new PopupInkFontListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_ink_font_list is invalid. Received: " + obj);
            case 285:
                if ("layout/popup_ink_pen_0".equals(obj)) {
                    return new PopupInkPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_ink_pen is invalid. Received: " + obj);
            case 286:
                if ("layout/popup_insert_page_0".equals(obj)) {
                    return new PopupInsertPageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_insert_page is invalid. Received: " + obj);
            case 287:
                if ("layout/popup_laser_shape_0".equals(obj)) {
                    return new PopupLaserShapeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_laser_shape is invalid. Received: " + obj);
            case 288:
                if ("layout/popup_lasso_0".equals(obj)) {
                    return new PopupLassoBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_lasso is invalid. Received: " + obj);
            case 289:
                if ("layout/popup_layer_0".equals(obj)) {
                    return new PopupLayerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_layer is invalid. Received: " + obj);
            case 290:
                if ("layout/popup_link_redbook_0".equals(obj)) {
                    return new PopupLinkRedbookBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_link_redbook is invalid. Received: " + obj);
            case 291:
                if ("layout/popup_link_website_0".equals(obj)) {
                    return new PopupLinkWebsiteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_link_website is invalid. Received: " + obj);
            case 292:
                if ("layout/popup_loading_0".equals(obj)) {
                    return new PopupLoadingBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_loading is invalid. Received: " + obj);
            case 293:
                if ("layout/popup_long_press_0".equals(obj)) {
                    return new PopupLongPressBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_long_press is invalid. Received: " + obj);
            case 294:
                if ("layout/popup_long_press_paste_0".equals(obj)) {
                    return new PopupLongPressPasteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_long_press_paste is invalid. Received: " + obj);
            case f53046I4 /* 295 */:
                if ("layout/popup_magnifier_0".equals(obj)) {
                    return new PopupMagnifierBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_magnifier is invalid. Received: " + obj);
            case 296:
                if ("layout/popup_margin_size_0".equals(obj)) {
                    return new PopupMarginSizeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_margin_size is invalid. Received: " + obj);
            case 297:
                if ("layout/popup_margin_style_0".equals(obj)) {
                    return new PopupMarginStyleBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_margin_style is invalid. Received: " + obj);
            case f53067L4 /* 298 */:
                if ("layout/popup_margin_template_space_0".equals(obj)) {
                    return new PopupMarginTemplateSpaceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_margin_template_space is invalid. Received: " + obj);
            case 299:
                if ("layout/popup_mark_pen_0".equals(obj)) {
                    return new PopupMarkPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_mark_pen is invalid. Received: " + obj);
            case 300:
                if ("layout/popup_note_auto_lock_interval_0".equals(obj)) {
                    return new PopupNoteAutoLockIntervalBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_auto_lock_interval is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    /* renamed from: g */
    public final ViewDataBinding m41696g(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 301:
                if ("layout/popup_note_document_more_settings_0".equals(obj)) {
                    return new PopupNoteDocumentMoreSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_document_more_settings is invalid. Received: " + obj);
            case 302:
                if ("layout/popup_note_list_dust_bin_op_0".equals(obj)) {
                    return new PopupNoteListDustBinOpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_list_dust_bin_op is invalid. Received: " + obj);
            case 303:
                if ("layout/popup_note_list_more_operate_0".equals(obj)) {
                    return new PopupNoteListMoreOperateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_list_more_operate is invalid. Received: " + obj);
            case 304:
                if ("layout/popup_note_list_op_0".equals(obj)) {
                    return new PopupNoteListOpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_list_op is invalid. Received: " + obj);
            case 305:
                if ("layout/popup_note_list_sort_0".equals(obj)) {
                    return new PopupNoteListSortBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_list_sort is invalid. Received: " + obj);
            case 306:
                if ("layout/popup_note_mode_0".equals(obj)) {
                    return new PopupNoteModeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_mode is invalid. Received: " + obj);
            case 307:
                if ("layout/popup_note_overview_options_0".equals(obj)) {
                    return new PopupNoteOverviewOptionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_note_overview_options is invalid. Received: " + obj);
            case 308:
                if ("layout/popup_page_num_float_panel_0".equals(obj)) {
                    return new PopupPageNumFloatPanelBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_page_num_float_panel is invalid. Received: " + obj);
            case 309:
                if ("layout/popup_page_recycle_bin_0".equals(obj)) {
                    return new PopupPageRecycleBinBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_page_recycle_bin is invalid. Received: " + obj);
            case 310:
                if ("layout/popup_path_op_0".equals(obj)) {
                    return new PopupPathOpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_path_op is invalid. Received: " + obj);
            case 311:
                if ("layout/popup_pen_create_0".equals(obj)) {
                    return new PopupPenCreateBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_pen_create is invalid. Received: " + obj);
            case 312:
                if ("layout/popup_pen_list_0".equals(obj)) {
                    return new PopupPenListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_pen_list is invalid. Received: " + obj);
            case 313:
                if ("layout/popup_pen_size_0".equals(obj)) {
                    return new PopupPenSizeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_pen_size is invalid. Received: " + obj);
            case 314:
                if ("layout/popup_pencil_0".equals(obj)) {
                    return new PopupPencilBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_pencil is invalid. Received: " + obj);
            case 315:
                if ("layout/popup_quota_not_enough_0".equals(obj)) {
                    return new PopupQuotaNotEnoughBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_quota_not_enough is invalid. Received: " + obj);
            case 316:
                if ("layout/popup_quote_menu_0".equals(obj)) {
                    return new PopupQuoteMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_quote_menu is invalid. Received: " + obj);
            case 317:
                if ("layout/popup_release_note_0".equals(obj)) {
                    return new PopupReleaseNoteBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_release_note is invalid. Received: " + obj);
            case 318:
                if ("layout/popup_scale_collection_0".equals(obj)) {
                    return new PopupScaleCollectionBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_scale_collection is invalid. Received: " + obj);
            case 319:
                if ("layout/popup_seek_bar_0".equals(obj)) {
                    return new PopupSeekBarBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_seek_bar is invalid. Received: " + obj);
            case 320:
                if ("layout/popup_select_file_pages_0".equals(obj)) {
                    return new PopupSelectFilePagesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_select_file_pages is invalid. Received: " + obj);
            case 321:
                if ("layout/popup_select_move_to_layer_0".equals(obj)) {
                    return new PopupSelectMoveToLayerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_select_move_to_layer is invalid. Received: " + obj);
            case 322:
                if ("layout/popup_select_note_pages_0".equals(obj)) {
                    return new PopupSelectNotePagesBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_select_note_pages is invalid. Received: " + obj);
            case 323:
                if ("layout/popup_shape_link_0".equals(obj)) {
                    return new PopupShapeLinkBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_shape_link is invalid. Received: " + obj);
            case 324:
                if ("layout/popup_shape_link_edit_0".equals(obj)) {
                    return new PopupShapeLinkEditBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_shape_link_edit is invalid. Received: " + obj);
            case 325:
                if ("layout/popup_shape_tag_0".equals(obj)) {
                    return new PopupShapeTagBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_shape_tag is invalid. Received: " + obj);
            case 326:
                if ("layout/popup_shape_toolbar_custom_0".equals(obj)) {
                    return new PopupShapeToolbarCustomBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_shape_toolbar_custom is invalid. Received: " + obj);
            case 327:
                if ("layout/popup_shortcut_bar_custom_0".equals(obj)) {
                    return new PopupShortcutBarCustomBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_shortcut_bar_custom is invalid. Received: " + obj);
            case 328:
                if ("layout/popup_shortcut_bar_more_functions_0".equals(obj)) {
                    return new PopupShortcutBarMoreFunctionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_shortcut_bar_more_functions is invalid. Received: " + obj);
            case f53277q5 /* 329 */:
                if ("layout/popup_soft_paint_pen_0".equals(obj)) {
                    return new PopupSoftPaintPenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_soft_paint_pen is invalid. Received: " + obj);
            case 330:
                if ("layout/popup_stickers_0".equals(obj)) {
                    return new PopupStickersBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_stickers is invalid. Received: " + obj);
            case f53291s5 /* 331 */:
                if ("layout/popup_switch_note_settings_0".equals(obj)) {
                    return new PopupSwitchNoteSettingsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_switch_note_settings is invalid. Received: " + obj);
            case 332:
                if ("layout/popup_sync_error_0".equals(obj)) {
                    return new PopupSyncErrorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_sync_error is invalid. Received: " + obj);
            case 333:
                if ("layout/popup_tab_managment_0".equals(obj)) {
                    return new PopupTabManagmentBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_tab_managment is invalid. Received: " + obj);
            case 334:
                if ("layout/popup_tab_note_options_0".equals(obj)) {
                    return new PopupTabNoteOptionsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_tab_note_options is invalid. Received: " + obj);
            case f53319w5 /* 335 */:
                if ("layout/popup_tag_op_0".equals(obj)) {
                    return new PopupTagOpBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_tag_op is invalid. Received: " + obj);
            case 336:
                if ("layout/popup_tags_list_0".equals(obj)) {
                    return new PopupTagsListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_tags_list is invalid. Received: " + obj);
            case 337:
                if ("layout/popup_tape_pen_0".equals(obj)) {
                    return new PopupTapePenBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_tape_pen is invalid. Received: " + obj);
            case 338:
                if ("layout/popup_template_edit_0".equals(obj)) {
                    return new PopupTemplateEditBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_template_edit is invalid. Received: " + obj);
            case 339:
                if ("layout/popup_template_space_args_0".equals(obj)) {
                    return new PopupTemplateSpaceArgsBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_template_space_args is invalid. Received: " + obj);
            case 340:
                if ("layout/popup_text_font_list_0".equals(obj)) {
                    return new PopupTextFontListBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_text_font_list is invalid. Received: " + obj);
            case 341:
                if ("layout/popup_text_size_space_0".equals(obj)) {
                    return new PopupTextSizeSpaceBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_text_size_space is invalid. Received: " + obj);
            case 342:
                if ("layout/popup_textinput_selection_menu_0".equals(obj)) {
                    return new PopupTextinputSelectionMenuBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_textinput_selection_menu is invalid. Received: " + obj);
            case f53019E5 /* 343 */:
                if ("layout/popup_theme_0".equals(obj)) {
                    return new PopupThemeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_theme is invalid. Received: " + obj);
            case f53026F5 /* 344 */:
                if ("layout/popup_tips_guide_0".equals(obj)) {
                    return new PopupTipsGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_tips_guide is invalid. Received: " + obj);
            case 345:
                if ("layout/popup_universal_shape_0".equals(obj)) {
                    return new PopupUniversalShapeBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_universal_shape is invalid. Received: " + obj);
            case 346:
                if ("layout/popup_upgrade_image_0".equals(obj)) {
                    return new PopupUpgradeImageBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_upgrade_image is invalid. Received: " + obj);
            case 347:
                if ("layout/popup_upgrade_mix_0".equals(obj)) {
                    return new PopupUpgradeMixBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_upgrade_mix is invalid. Received: " + obj);
            case f53054J5 /* 348 */:
                if ("layout/popup_upgrade_text_0".equals(obj)) {
                    return new PopupUpgradeTextBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_upgrade_text is invalid. Received: " + obj);
            case f53061K5 /* 349 */:
                if ("layout/popup_web_view_0".equals(obj)) {
                    return new PopupWebViewBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_web_view is invalid. Received: " + obj);
            case f53068L5 /* 350 */:
                if ("layout/popup_write_pen_group_0".equals(obj)) {
                    return new PopupWritePenGroupBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for popup_write_pen_group is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = f53110R5.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag != null) {
            switch ((i2 - 1) / 50) {
                case 0:
                    return m41690a(dataBindingComponent, view, i2, tag);
                case 1:
                    return m41691b(dataBindingComponent, view, i2, tag);
                case 2:
                    return m41692c(dataBindingComponent, view, i2, tag);
                case 3:
                    return m41693d(dataBindingComponent, view, i2, tag);
                case 4:
                    return m41694e(dataBindingComponent, view, i2, tag);
                case 5:
                    return m41695f(dataBindingComponent, view, i2, tag);
                case 6:
                    return m41696g(dataBindingComponent, view, i2, tag);
                case 7:
                    return m41697h(dataBindingComponent, view, i2, tag);
                default:
                    return null;
            }
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = C10633b.f53342a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: h */
    public final ViewDataBinding m41697h(DataBindingComponent dataBindingComponent, View view, int i, Object obj) {
        switch (i) {
            case 351:
                if ("layout/restore_error_item_0".equals(obj)) {
                    return new RestoreErrorItemBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for restore_error_item is invalid. Received: " + obj);
            case f53082N5 /* 352 */:
                if ("layout/split_screen_layout_0".equals(obj)) {
                    return new SplitScreenLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for split_screen_layout is invalid. Received: " + obj);
            case f53089O5 /* 353 */:
                if ("layout/tags_linearlayout_child_layout_0".equals(obj)) {
                    return new TagsLinearlayoutChildLayoutBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for tags_linearlayout_child_layout is invalid. Received: " + obj);
            case f53096P5 /* 354 */:
                if ("layout/view_guide_0".equals(obj)) {
                    return new ViewGuideBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_guide is invalid. Received: " + obj);
            case f53103Q5 /* 355 */:
                if ("layout/view_tool_bar_container_0".equals(obj)) {
                    return new ViewToolBarContainerBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for view_tool_bar_container is invalid. Received: " + obj);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || f53110R5.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }
}
