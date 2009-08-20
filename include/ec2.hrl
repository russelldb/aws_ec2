%% HRL file generated by ERLSOM
%%
%% It is possible to change the name of the record fields.
%%
%% It is possible to add default values, but be aware that these will
%% only be used when *writing* an xml document.

-record('_document-UnmonitorInstancesResponse', {anyAttribs, 'requestId', 'instancesSet'}).
-record('_document-MonitorInstancesResponse', {anyAttribs, 'requestId', 'instancesSet'}).
-record('_document-UnmonitorInstances', {anyAttribs, 'instancesSet'}).
-record('_document-MonitorInstances', {anyAttribs, 'instancesSet'}).
-record('InstanceMonitoringStateType', {anyAttribs, 'state'}).
-record('MonitorInstancesResponseSetItemType', {anyAttribs, 'instanceId', 'monitoring'}).
-record('MonitorInstancesResponseSetType', {anyAttribs, 'item'}).
-record('MonitorInstancesResponseType', {anyAttribs, 'requestId', 'instancesSet'}).
-record('MonitorInstancesSetItemType', {anyAttribs, 'instanceId'}).
-record('MonitorInstancesSetType', {anyAttribs, 'item'}).
-record('MonitorInstancesType', {anyAttribs, 'instancesSet'}).
-record('DescribeReservedInstancesResponseSetItemType', {anyAttribs, 'reservedInstancesId', 'instanceType', 'availabilityZone', 'start', 'duration', 'fixedPrice', 'usagePrice', 'instanceCount', 'productDescription', 'state'}).
-record('DescribeReservedInstancesResponseSetType', {anyAttribs, 'item'}).
-record('DescribeReservedInstancesResponseType', {anyAttribs, 'requestId', 'reservedInstancesSet'}).
-record('DescribeReservedInstancesSetItemType', {anyAttribs, 'reservedInstancesId'}).
-record('DescribeReservedInstancesSetType', {anyAttribs, 'item'}).
-record('DescribeReservedInstancesType', {anyAttribs, 'reservedInstancesSet'}).
-record('PurchaseReservedInstancesOfferingResponseType', {anyAttribs, 'requestId', 'reservedInstancesId'}).
-record('PurchaseReservedInstancesOfferingType', {anyAttribs, 'reservedInstancesOfferingId', 'instanceCount'}).
-record('DescribeReservedInstancesOfferingsResponseSetItemType', {anyAttribs, 'reservedInstancesOfferingId', 'instanceType', 'availabilityZone', 'duration', 'fixedPrice', 'usagePrice', 'productDescription'}).
-record('DescribeReservedInstancesOfferingsResponseSetType', {anyAttribs, 'item'}).
-record('DescribeReservedInstancesOfferingsResponseType', {anyAttribs, 'requestId', 'reservedInstancesOfferingsSet'}).
-record('DescribeReservedInstancesOfferingsSetItemType', {anyAttribs, 'reservedInstancesOfferingId'}).
-record('DescribeReservedInstancesOfferingsSetType', {anyAttribs, 'item'}).
-record('DescribeReservedInstancesOfferingsType', {anyAttribs, 'reservedInstancesOfferingsSet', 'instanceType', 'availabilityZone', 'productDescription'}).
-record('RegionItemType', {anyAttribs, 'regionName', 'regionEndpoint'}).
-record('RegionSetType', {anyAttribs, 'item'}).
-record('DescribeRegionsResponseType', {anyAttribs, 'requestId', 'regionInfo'}).
-record('DescribeRegionsSetItemType', {anyAttribs, 'regionName'}).
-record('DescribeRegionsSetType', {anyAttribs, 'item'}).
-record('DescribeRegionsType', {anyAttribs, 'regionSet'}).
-record('CancelBundleTaskResponseType', {anyAttribs, 'requestId', 'bundleInstanceTask'}).
-record('CancelBundleTaskType', {anyAttribs, 'bundleId'}).
-record('BundleInstanceTasksSetType', {anyAttribs, 'item'}).
-record('DescribeBundleTasksResponseType', {anyAttribs, 'requestId', 'bundleInstanceTasksSet'}).
-record('DescribeBundleTasksItemType', {anyAttribs, 'bundleId'}).
-record('DescribeBundleTasksInfoType', {anyAttribs, 'item'}).
-record('DescribeBundleTasksType', {anyAttribs, 'bundlesSet'}).
-record('BundleInstanceTaskErrorType', {anyAttribs, 'code', 'message'}).
-record('BundleInstanceTaskType', {anyAttribs, 'instanceId', 'bundleId', 'state', 'startTime', 'updateTime', 'storage', 'progress', 'error'}).
-record('BundleInstanceResponseType', {anyAttribs, 'requestId', 'bundleInstanceTask'}).
-record('BundleInstanceS3StorageType', {anyAttribs, 'bucket', 'prefix', 'awsAccessKeyId', 'uploadPolicy', 'uploadPolicySignature'}).
-record('BundleInstanceTaskStorageType', {anyAttribs, 'S3'}).
-record('BundleInstanceType', {anyAttribs, 'instanceId', 'storage'}).
-record('DescribeSnapshotsSetItemResponseType', {anyAttribs, 'snapshotId', 'volumeId', 'status', 'startTime', 'progress'}).
-record('DescribeSnapshotsSetResponseType', {anyAttribs, 'item'}).
-record('DescribeSnapshotsResponseType', {anyAttribs, 'requestId', 'snapshotSet'}).
-record('DescribeSnapshotsSetItemType', {anyAttribs, 'snapshotId'}).
-record('DescribeSnapshotsSetType', {anyAttribs, 'item'}).
-record('DescribeSnapshotsType', {anyAttribs, 'snapshotSet'}).
-record('DeleteSnapshotResponseType', {anyAttribs, 'requestId', 'return'}).
-record('DeleteSnapshotType', {anyAttribs, 'snapshotId'}).
-record('CreateSnapshotResponseType', {anyAttribs, 'requestId', 'snapshotId', 'volumeId', 'status', 'startTime', 'progress'}).
-record('CreateSnapshotType', {anyAttribs, 'volumeId'}).
-record('DetachVolumeResponseType', {anyAttribs, 'requestId', 'volumeId', 'instanceId', 'device', 'status', 'attachTime'}).
-record('DetachVolumeType', {anyAttribs, 'volumeId', 'instanceId', 'device', 'force'}).
-record('AttachVolumeResponseType', {anyAttribs, 'requestId', 'volumeId', 'instanceId', 'device', 'status', 'attachTime'}).
-record('AttachVolumeType', {anyAttribs, 'volumeId', 'instanceId', 'device'}).
-record('AttachmentSetItemResponseType', {anyAttribs, 'volumeId', 'instanceId', 'device', 'status', 'attachTime'}).
-record('AttachmentSetResponseType', {anyAttribs, 'item'}).
-record('DescribeVolumesSetItemResponseType', {anyAttribs, 'volumeId', 'size', 'snapshotId', 'availabilityZone', 'status', 'createTime', 'attachmentSet'}).
-record('DescribeVolumesSetResponseType', {anyAttribs, 'item'}).
-record('DescribeVolumesResponseType', {anyAttribs, 'requestId', 'volumeSet'}).
-record('DescribeVolumesSetItemType', {anyAttribs, 'volumeId'}).
-record('DescribeVolumesSetType', {anyAttribs, 'item'}).
-record('DescribeVolumesType', {anyAttribs, 'volumeSet'}).
-record('DeleteVolumeResponseType', {anyAttribs, 'requestId', 'return'}).
-record('DeleteVolumeType', {anyAttribs, 'volumeId'}).
-record('CreateVolumeResponseType', {anyAttribs, 'requestId', 'volumeId', 'size', 'snapshotId', 'availabilityZone', 'status', 'createTime'}).
-record('CreateVolumeType', {anyAttribs, 'size', 'snapshotId', 'availabilityZone'}).
-record('DisassociateAddressResponseType', {anyAttribs, 'requestId', 'return'}).
-record('DisassociateAddressType', {anyAttribs, 'publicIp'}).
-record('AssociateAddressResponseType', {anyAttribs, 'requestId', 'return'}).
-record('AssociateAddressType', {anyAttribs, 'publicIp', 'instanceId'}).
-record('DescribeAddressesResponseItemType', {anyAttribs, 'publicIp', 'instanceId'}).
-record('DescribeAddressesResponseInfoType', {anyAttribs, 'item'}).
-record('DescribeAddressesResponseType', {anyAttribs, 'requestId', 'addressesSet'}).
-record('DescribeAddressesItemType', {anyAttribs, 'publicIp'}).
-record('DescribeAddressesInfoType', {anyAttribs, 'item'}).
-record('DescribeAddressesType', {anyAttribs, 'publicIpsSet'}).
-record('ReleaseAddressResponseType', {anyAttribs, 'requestId', 'return'}).
-record('ReleaseAddressType', {anyAttribs, 'publicIp'}).
-record('AllocateAddressResponseType', {anyAttribs, 'requestId', 'publicIp'}).
-record('AllocateAddressType', {anyAttribs}).
-record('AvailabilityZoneItemType', {anyAttribs, 'zoneName', 'zoneState', 'regionName'}).
-record('AvailabilityZoneSetType', {anyAttribs, 'item'}).
-record('DescribeAvailabilityZonesResponseType', {anyAttribs, 'requestId', 'availabilityZoneInfo'}).
-record('DescribeAvailabilityZonesSetItemType', {anyAttribs, 'zoneName'}).
-record('DescribeAvailabilityZonesSetType', {anyAttribs, 'item'}).
-record('DescribeAvailabilityZonesType', {anyAttribs, 'availabilityZoneSet'}).
-record('ConfirmProductInstanceResponseType', {anyAttribs, 'requestId', 'return', 'ownerId'}).
-record('ProductCodesSetItemType', {anyAttribs, 'productCode'}).
-record('ProductCodesSetType', {anyAttribs, 'item'}).
-record('ConfirmProductInstanceType', {anyAttribs, 'productCode', 'instanceId'}).
-record('AttributeValueType', {anyAttribs, 'value'}).
-record('NullableAttributeValueType', {anyAttribs, 'value'}).
-record('DescribeImageAttributeResponseType-kernel', {anyAttribs, 'value'}).
-record('DescribeImageAttributeResponseType-ramdisk', {anyAttribs, 'value'}).
-record('DescribeImageAttributeResponseType', {anyAttribs, 'requestId', 'imageId', choice}).
-record('DescribeImageAttributesGroup-launchPermission', {anyAttribs}).
-record('DescribeImageAttributesGroup-productCodes', {anyAttribs}).
-record('DescribeImageAttributesGroup-kernel', {anyAttribs}).
-record('DescribeImageAttributesGroup-ramdisk', {anyAttribs}).
-record('DescribeImageAttributesGroup-blockDeviceMapping', {anyAttribs}).
-record('DescribeImageAttributesGroup', {anyAttribs, choice}).
-record('DescribeImageAttributeType', {anyAttribs, 'imageId', choice}).
-record('ResetImageAttributeResponseType', {anyAttribs, 'requestId', 'return'}).
-record('EmptyElementType', {anyAttribs}).
-record('ResetImageAttributesGroup', {anyAttribs, 'launchPermission'}).
-record('ResetImageAttributeType', {anyAttribs, 'imageId', 'ResetImageAttributesGroup'}).
-record('ModifyImageAttributeResponseType', {anyAttribs, 'requestId', 'return'}).
-record('ProductCodeItemType', {anyAttribs, 'productCode'}).
-record('ProductCodeListType', {anyAttribs, 'item'}).
-record('LaunchPermissionItemType-userId', {anyAttribs, 'userId'}).
-record('LaunchPermissionItemType-group', {anyAttribs, 'group'}).
-record('LaunchPermissionItemType', {anyAttribs, choice}).
-record('LaunchPermissionListType', {anyAttribs, 'item'}).
-record('LaunchPermissionOperationType-add', {anyAttribs, 'item'}).
-record('LaunchPermissionOperationType-remove', {anyAttribs, 'item'}).
-record('LaunchPermissionOperationType', {anyAttribs, choice}).
-record('ModifyImageAttributeType', {anyAttribs, 'imageId', choice}).
-record('InstanceStateType', {anyAttribs, 'code', 'name'}).
-record('RevokeSecurityGroupIngressResponseType', {anyAttribs, 'requestId', 'return'}).
-record('RevokeSecurityGroupIngressType', {anyAttribs, 'userId', 'groupName', 'ipPermissions'}).
-record('AuthorizeSecurityGroupIngressResponseType', {anyAttribs, 'requestId', 'return'}).
-record('AuthorizeSecurityGroupIngressType', {anyAttribs, 'userId', 'groupName', 'ipPermissions'}).
-record('SecurityGroupItemType', {anyAttribs, 'ownerId', 'groupName', 'groupDescription', 'ipPermissions'}).
-record('SecurityGroupSetType', {anyAttribs, 'item'}).
-record('UserIdGroupPairType', {anyAttribs, 'userId', 'groupName'}).
-record('UserIdGroupPairSetType', {anyAttribs, 'item'}).
-record('IpRangeItemType', {anyAttribs, 'cidrIp'}).
-record('IpRangeSetType', {anyAttribs, 'item'}).
-record('IpPermissionType', {anyAttribs, 'ipProtocol', 'fromPort', 'toPort', 'groups', 'ipRanges'}).
-record('IpPermissionSetType', {anyAttribs, 'item'}).
-record('DescribeSecurityGroupsResponseType', {anyAttribs, 'requestId', 'securityGroupInfo'}).
-record('DescribeSecurityGroupsSetItemType', {anyAttribs, 'groupName'}).
-record('DescribeSecurityGroupsSetType', {anyAttribs, 'item'}).
-record('DescribeSecurityGroupsType', {anyAttribs, 'securityGroupSet'}).
-record('DeleteSecurityGroupResponseType', {anyAttribs, 'requestId', 'return'}).
-record('DeleteSecurityGroupType', {anyAttribs, 'groupName'}).
-record('CreateSecurityGroupResponseType', {anyAttribs, 'requestId', 'return'}).
-record('CreateSecurityGroupType', {anyAttribs, 'groupName', 'groupDescription'}).
-record('DescribeImagesResponseItemType', {anyAttribs, 'imageId', 'imageLocation', 'imageState', 'imageOwnerId', 'isPublic', 'productCodes', 'architecture', 'imageType', 'kernelId', 'ramdiskId', 'platform'}).
-record('DescribeImagesResponseInfoType', {anyAttribs, 'item'}).
-record('DescribeImagesResponseType', {anyAttribs, 'requestId', 'imagesSet'}).
-record('DescribeImagesExecutableByType', {anyAttribs, 'user'}).
-record('DescribeImagesExecutableBySetType', {anyAttribs, 'item'}).
-record('DescribeImagesOwnerType', {anyAttribs, 'owner'}).
-record('DescribeImagesOwnersType', {anyAttribs, 'item'}).
-record('DescribeImagesItemType', {anyAttribs, 'imageId'}).
-record('DescribeImagesInfoType', {anyAttribs, 'item'}).
-record('DescribeImagesType', {anyAttribs, 'executableBySet', 'imagesSet', 'ownersSet'}).
-record('ReservationSetType', {anyAttribs, 'item'}).
-record('DescribeInstancesResponseType', {anyAttribs, 'requestId', 'reservationSet'}).
-record('DescribeInstancesItemType', {anyAttribs, 'instanceId'}).
-record('DescribeInstancesInfoType', {anyAttribs, 'item'}).
-record('DescribeInstancesType', {anyAttribs, 'instancesSet'}).
-record('RebootInstancesResponseType', {anyAttribs, 'requestId', 'return'}).
-record('RebootInstancesItemType', {anyAttribs, 'instanceId'}).
-record('RebootInstancesInfoType', {anyAttribs, 'item'}).
-record('RebootInstancesType', {anyAttribs, 'instancesSet'}).
-record('TerminateInstancesResponseItemType', {anyAttribs, 'instanceId', 'shutdownState', 'previousState'}).
-record('TerminateInstancesResponseInfoType', {anyAttribs, 'item'}).
-record('TerminateInstancesResponseType', {anyAttribs, 'requestId', 'instancesSet'}).
-record('TerminateInstancesItemType', {anyAttribs, 'instanceId'}).
-record('TerminateInstancesInfoType', {anyAttribs, 'item'}).
-record('TerminateInstancesType', {anyAttribs, 'instancesSet'}).
-record('GetConsoleOutputResponseType', {anyAttribs, 'requestId', 'instanceId', 'timestamp', 'output'}).
-record('GetConsoleOutputType', {anyAttribs, 'instanceId'}).
-record('PlacementResponseType', {anyAttribs, 'availabilityZone'}).
-record('RunningInstancesItemType', {anyAttribs, 'instanceId', 'imageId', 'instanceState', 'privateDnsName', 'dnsName', 'reason', 'keyName', 'amiLaunchIndex', 'productCodes', 'instanceType', 'launchTime', 'placement', 'kernelId', 'ramdiskId', 'platform', 'monitoring'}).
-record('RunningInstancesSetType', {anyAttribs, 'item'}).
-record('ReservationInfoType', {anyAttribs, 'reservationId', 'ownerId', 'groupSet', 'instancesSet', 'requesterId'}).
-record('RunInstancesResponseType', {anyAttribs, 'requestId', 'reservationId', 'ownerId', 'groupSet', 'instancesSet', 'requesterId'}).
-record('MonitoringInstanceType', {anyAttribs, 'enabled'}).
-record('PlacementRequestType', {anyAttribs, 'availabilityZone'}).
-record('BlockDeviceMappingItemType', {anyAttribs, 'virtualName', 'deviceName'}).
-record('BlockDeviceMappingType', {anyAttribs, 'item'}).
-record('UserDataType-data', {anyAttribs, 'data'}).
-record('UserDataType', {anyAttribs, 'version', 'encoding', choice}).
-record('GroupItemType', {anyAttribs, 'groupId'}).
-record('GroupSetType', {anyAttribs, 'item'}).
-record('RunInstancesType', {anyAttribs, 'imageId', 'minCount', 'maxCount', 'keyName', 'groupSet', 'additionalInfo', 'userData', 'addressingType', 'instanceType', 'placement', 'kernelId', 'ramdiskId', 'blockDeviceMapping', 'monitoring'}).
-record('DescribeKeyPairsResponseItemType', {anyAttribs, 'keyName', 'keyFingerprint'}).
-record('DescribeKeyPairsResponseInfoType', {anyAttribs, 'item'}).
-record('DescribeKeyPairsResponseType', {anyAttribs, 'requestId', 'keySet'}).
-record('DescribeKeyPairsItemType', {anyAttribs, 'keyName'}).
-record('DescribeKeyPairsInfoType', {anyAttribs, 'item'}).
-record('DescribeKeyPairsType', {anyAttribs, 'keySet'}).
-record('DeleteKeyPairResponseType', {anyAttribs, 'requestId', 'return'}).
-record('DeleteKeyPairType', {anyAttribs, 'keyName'}).
-record('CreateKeyPairResponseType', {anyAttribs, 'requestId', 'keyName', 'keyFingerprint', 'keyMaterial'}).
-record('CreateKeyPairType', {anyAttribs, 'keyName'}).
-record('DeregisterImageResponseType', {anyAttribs, 'requestId', 'return'}).
-record('DeregisterImageType', {anyAttribs, 'imageId'}).
-record('RegisterImageResponseType', {anyAttribs, 'requestId', 'imageId'}).
-record('RegisterImageType', {anyAttribs, 'imageLocation'}).
